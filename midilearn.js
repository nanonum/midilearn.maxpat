/*

	MIDI Learn js
	ver.01
	2014/10/22

	Copyright 2014, nanonum ( http://www.nanonum.com/ )
	License: MIT

	live.numbox
	live.slider
	live.dial
	live.gain
	live.toggle
	
	slider
	number
	flonum
	dial
	multislider
	toggle


	gain *
	bang *
	button *
	textbutton *
	text *
	ubutton *
	rslider *
	tab *
	arrow *
	
	* not tested
*/


outlets = 4;
// --------------------------------------------------------
// Develop
// --------------------------------------------------------
var console = {
	log: function(msg){
		post();
		post(msg);
		post();
	},
	array: function(array){
		for(var i = 0; i < array.length; i++){
			post(array[i]);
		}
		post();
	}
}
var log = console.log;
// --------------------------------------------------------

/*
------------------------------------------------------
Dict manager 
2014/10/24
------------------------------------------------------
*/
var DictMgr = function(dictname, is_save, is_embed){
	var root = (function(){
		return _repeat(patcher);
		function _repeat(p){
			if(p.parentpatcher !== null){
				return _repeat(p.parentpatcher);
 			}else{
 				return p;
 			}
		}
	}());
	var _dictname = dictname || '';
	var _tmppath = (root.filepath).split('/')
		_tmppath.pop();
	var _dir = _tmppath.join('/') + '/';
	var _dictname = root.name + '_' + _dictname;

	// add prototype
	Dict.prototype.save = function(){
		if(is_embed){return false;}
		_d.export_json(_dir + _dictname + '.json');
	}
	Dict.prototype.load = function(){
		if(is_embed){return false;}
		_d.import_json(this.fullpath);
	}
	
	// init
	var _d = new Dict();
		_d.name = _dictname;

	if(is_embed){
		outlet(3, 'embed', 1);
	}else if(is_save){
		outlet(3, 'embed', 0);
		_d.import_json(_dir + _dictname + '.json');
	}
		
	return _d;
}
// ---------------------------------------------------


var defaults = {
	min: 0,
	max: 127
}


var cellblock = {
	//setting
	o: 0,	//outlet number

	// defaults
	rows: 1,
	header: ['PARAMETER', 'PATH', 'CC NUMBER', 'MIDI CH', 'MIN', 'MAX', 'CLASS', 'MULTISLIDER'],
	init: function(length){
		this.rows = 1;
		outlet(this.o, 'clear', 'all');
		this.build_header();
	},
	// set: function(index, value){
	// 	outlet(this.o, 'set', index, this.rows, value);
	// },
	append: function(cols, name){
		outlet(this.o, 'set', cols, this.rows, name);
		this.rows++;
		this.resize();
	},
	resize: function(){
		outlet(this.o, 'rows', this.rows);
	},
	build_header: function(){
		for(var i = 0, length = this.header.length; i < length; i++){
			outlet(this.o, 'set', i, 0, this.header[i]);
		}
	}
}
cellblock.local = 1;


var automate_setting = [];
// --------------------------------------------------------------------------------------------------------------
function learn(cc, ch, str){
	var nordname = encodeBrackets(str);
	var fullpath = nordname;
	var slider_index = -1;

	if(nordname.indexOf('.') !== -1){
		var splited = nordname.split('.');
		nordname = splited[0];
		slider_index = splited[1];
	}
	var _min = parameters.dict.get(nordname).get('minimum');
	var _max = parameters.dict.get(nordname).get('maximum');
	var _class = parameters.dict.get(nordname).get('class');

	maps.replace(encodeURIComponent(fullpath) + '::ch', ch);
	maps.replace(encodeURIComponent(fullpath) + '::ccnum', cc);
	maps.replace(encodeURIComponent(fullpath) + '::min', _min);
	maps.replace(encodeURIComponent(fullpath) + '::max', _max);
	maps.replace(encodeURIComponent(fullpath) + '::slider_index', slider_index);
	maps.replace(encodeURIComponent(fullpath) + '::class', _class);

	export_mapping(maps);
	maps.save();

	// automate_setting[ch] = automate_setting[ch] || [];
	// automate_setting[ch][cc] = automate_setting[ch][cc] || [];
	// automate_setting[ch][cc].push({
	// 	path: str,
	// 	minimum: _min,
	// 	maximum: _max
	// });

	dict_to_cellblock();
}

// export setting to subpatchers with pattrforward
function export_mapping(maps){
	// reset
	outlet(2, 'voices', 0);
	outlet(3, 'name', maps.name)
	outlet(3, 'bang');

	var keys = arrayfromsinglekey(maps.getkeys());
	if(keys === null){
		outlet(2, 'target', 1);
		outlet(2, 128, 128, 0, 1, 0, '');
	}
	for(var key in keys){
		var thiskey = keys[key];
		var node = maps.get(thiskey);
		var slider_index = node.get('slider_index');
		var path = decodeBrackets(decodeURIComponent(thiskey));
		var gate_prepend = 1;
		path = path.replace(/\..*/g, '')

		var rawfloat = node.get('class').indexOf('live.') === 0 ? 2 : 1;
		var prepend = '';

		if(slider_index !== -1){
			gate_prepend = 2;
			prepend = 'select ' + (parseInt(slider_index) + 1);
		}else if(node.get('class').indexOf('live.') === 0){
			gate_prepend = 2;
			prepend = 'rawfloat';
		}

		// poly~ voices
		outlet(2, 'voices', keys.length);

		// var gate_prepend =  === -1 ? '' : ''
		outlet(2, 'target', key);
		outlet(
			2,
			node.get('ch'),
			node.get('ccnum'),
			node.get('min'),
			node.get('max'),
			gate_prepend,
			prepend,
			'parent::' + root.prefix + path // poly~ needs literal 'parent::'
		);
	}

}
// --------------------------------------------------------------------------------------------------------------
function dict_to_cellblock(){

	// cellblock init;
	var automate_array = arrayfromsinglekey(maps.getkeys());
	if(automate_array === null){
		cellblock.init();
		cellblock.resize();
		return false;
	}
	var automate_length = automate_array.length;
	cellblock.init(automate_length);

	// outlet(0, 'rows', map.length + 1);		// cellblock rows
	for(var i = 0; i < automate_length; i++){
		_iter(cellblock.rows, automate_array[i]);
	}

	// iteration
	function _iter(rows, name){

		var fullpath = decodeURIComponent(name)
		var nordname = encodeBrackets(name);
		var slider_index = -1;

		if(fullpath.indexOf('.') !== -1){
			var splited = fullpath.split('.');
			fullpath = splited[0];
			slider_index = splited[1];
		}
		cellblock.append(0, decodeBrackets(decodeURIComponent(nordname)).split('::').pop() );

		var map_key = maps.get(nordname);
		var directory = fullpath.split('::');
			directory.pop();

		outlet(0, 'set', 1, rows, decodeBrackets(directory.join('::')));	
		outlet(0, 'set', 2, rows, map_key.get('ccnum'));
		outlet(0, 'set', 3, rows, map_key.get('ch'));
		outlet(0, 'set', 4, rows, map_key.get('min'));
		outlet(0, 'set', 5, rows, map_key.get('max'));
		outlet(0, 'set', 6, rows, map_key.get('class'));
		if(slider_index !== -1){
			outlet(0, 'set', 7, rows, slider_index);
		}
	}
}
dict_to_cellblock.local = 1;


function cc(){
}

var parameters = (function(){
	var d = new DictMgr('dict_params', false, false);
	var dir = [];
	var n;

	function _update(thispatcher){
		function __update(thispatcher){

			var varname = encodeBrackets(thispatcher.varname);
			var is_live = false;

			if(varname && thispatcher.maxclass.match(/^(live.)?(patcher||bpatcher||poly||poly~||numbox||slider||number||flonum||dial||multislider||toggle||gain||bang||button||textbutton||text||ubutton||rslider||tab||arrow)$/) !== null){
				if(thispatcher.subpatcher() ){

					// iterate if subpatch 
					dir.push(varname);
					__update(thispatcher.subpatcher().firstobject);
					dir.pop();

				}else{
					var prefix = dir.join('::');
					var path = prefix ? '::' : "";　

					switch(thispatcher.maxclass){
						case 'number': 
						case 'flonum': 
							var minimum = is_none(thispatcher.getattr('minimum'), defaults.min);
							var maximum = is_none(thispatcher.getattr('maximum'), defaults.max);
							d.replace(prefix + path + varname + '::minimum' ,minimum );
							d.replace(prefix + path + varname + '::maximum' ,maximum );
							d.replace(prefix + path + varname + '::class' , thispatcher.maxclass );
						break;
						case 'toggle': 
							d.replace(prefix + path + varname + '::minimum' ,0 );
							d.replace(prefix + path + varname + '::maximum' ,1 );
							d.replace(prefix + path + varname + '::class' ,'toggle' );
						break;
						case 'dial': 
						case 'slider': 
							d.replace(prefix + path + varname + '::minimum' ,0 );
							d.replace(prefix + path + varname + '::maximum' ,thispatcher.getattr('size') -1 );
							d.replace(prefix + path + varname + '::class' ,thispatcher.maxclass );
						break;
						case 'jsui':
							d.replace(prefix + path + varname + '::class' ,thispatcher.maxclass );
							d.replace(prefix + path + varname + '::value' ,thispatcher.getvalueof());
						break;
						
						case 'multislider': 
							var minmax = thispatcher.getattr('setminmax');
							var size = thispatcher.getattr('size');
							d.replace(prefix + path + varname + '::minimum' ,minmax[0] );
							d.replace(prefix + path + varname + '::maximum' ,minmax[1] );
							d.replace(prefix + path + varname + '::length' ,size );
							d.replace(prefix + path + varname + '::class' ,thispatcher.maxclass );
						break;
						
						case 'textbutton': 
							var minmax = thispatcher.getattr('setminmax');
							d.replace(prefix + path + varname + '::mode' ,thispatcher.getattr('mode') ); // 0 = bang / 1 = toggle
							d.replace(prefix + path + varname + '::minimum' ,0 );
							d.replace(prefix + path + varname + '::maximum' ,1 );
							d.replace(prefix + path + varname + '::class' ,thispatcher.maxclass );
						break;
						
						// max for live --------------------------------------------------------------------------------
						case 'live.numbox':
						case 'live.slider':
							d.replace(prefix + path + varname + '::minimum' ,0 );
							d.replace(prefix + path + varname + '::maximum' ,1 );
							d.replace(prefix + path + varname + '::class' ,thispatcher.maxclass );
							is_live = true;
						break;
						case 'live.text':
							d.replace(prefix + path + varname + '::mode' ,thispatcher.getattr('mode') ); // 0 = bang / 1 = toggle
							d.replace(prefix + path + varname + '::minimum' ,0 );
							d.replace(prefix + path + varname + '::maximum' ,1 );
							d.replace(prefix + path + varname + '::class' ,thispatcher.maxclass );
							is_live = true;
						break;
						case 'live.dial':
							d.replace(prefix + path + varname + '::minimum' ,0 );
							d.replace(prefix + path + varname + '::maximum' ,1 );
							d.replace(prefix + path + varname + '::class' ,'live.dial' );
							is_live = true;
						break;
						
						default:
							d.replace(prefix + path + varname + '::class' ,thispatcher.maxclass );
						break;
					}
					d.replace(prefix + path + varname + '::patcher' ,thispatcher );
				}
			}
			if(n = thispatcher.nextobject){ __update(n); } // repeat if nextobject is not defined

		}
		__update(thispatcher);
		_umenu();
		d.save();
	}
	function _umenu(){
		var udir = [];
		outlet(1, 'clear');

		_iter(d);
		function _iter(node){
			var prefix = udir.join('::');
			var path = prefix ? '::' : "";
			var children = arrayfromsinglekey(node.getkeys());

			for(child in children){
				var thisname = children[child];
				var thisobj = node.get(thisname);
				var maxclass = thisobj ? thisobj.get('class') : null;

				switch(maxclass){
					case null:
						// patcher
						outlet(1, 'append', '<separator>');
						outlet(1, 'append', '(' + decodeBrackets(thisname).toUpperCase() + ')');

						udir.push(thisname);
						_iter(d.get(prefix + path + thisname));
						udir.pop();
					break;

					default:
						var prefix_view = prefix.replace(/\\(\d)\\/g, '[$1]');;
						// parameter
						if(maxclass !== 'multislider'){
							outlet(1, 'append', prefix_view + path + decodeBrackets(thisname));
						// multislider
						}else{
							var length = thisobj.get('length');
							for(var i = 0; i < length; i++){
								outlet(1, 'append', prefix_view + path + decodeBrackets(thisname) + '.' + i );
							}
						}
					break;
				}
			}
		}

	}
	return {
		dict: d,
		update: _update
	}
}());

function decodeBrackets(str){
	return str.replace(/\\(\d)\\/g, '[$1]');
}

function encodeBrackets(str){
	return str.replace(/(\[)(\d)(\])/g, '\\$2\\')
}

function arrayfromsinglekey(str){
	if(typeof str === 'string'){
		return [str];
	}else{
		return str;
	}
}
arrayfromsinglekey.local = 1;

function is_none(input, value){
	if(input === '<none>'){
		return value;
	}else{
		return input;
	}
}
is_none.local = 1;

var root = (function(){
	var prefix = '';
	return _repeat(patcher);
		function _repeat(p){
		if(p.parentpatcher !== null){
			prefix += 'parent::'
			return _repeat(p.parentpatcher);
		}else{
			p.prefix = prefix;
			return p;
		}
	}
}());
root.local = 1;

function unbind(index){
	if(index === 0){return false;}
	var keys = arrayfromsinglekey(maps.getkeys())
	delete maps.remove(keys[index - 1]);

	export_mapping(maps);
	dict_to_cellblock();
}

function reset(){
	var keys = arrayfromsinglekey(maps.getkeys())
	for(var key in keys){
		delete maps.remove(keys[key]);
	}
	export_mapping(maps);
	dict_to_cellblock();
}

function reload(){
	outlet(1, 'clear');
	parameters.update(root.firstobject);
	cellblock.build_header();
	dict_to_cellblock();
}
function slidetoggle(i){
	if(!this.patcher.box){return false;}
	var thisrect = this.patcher.box.rect;
	var height = i ? 277 : 17;
	this.patcher.box.rect = [thisrect[0], thisrect[1], thisrect[0] + 484, thisrect[1] + height]
}

var maps;
function loadbang(){
	slidetoggle(0);
	var vname = this.patcher.box ? this.patcher.box.varname : null;
	var embed = 0;
	if(vname){
		var args = arrayfromargs(this.patcher.box.getattr('arguments'));
		for(var i = 0, length = args.length; i < length; i++){
			if(args[i] === 'embed=1'){embed = 1;}
		}
	}
	maps = new DictMgr('midimap', true, true);
	reload();
}

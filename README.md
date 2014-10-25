midilearn.maxpat
================

The sub patcher of MIDI learning for Max/MSP

使い方
Scripting Nameが付いているUIオブジェクトをリストアップしてminimumとmaximumを元にオートメーションします。

1. UIオブジェクトにScripting Nameと最小値、最大値を設定
2. midilearn.maxpatをbpatcherなどとして読み込む（paste from、prototypeなどに登録しておくと良い）
3. ドロップダウンリストから対象のコントロールを選択しLEARNをクリック後MIDIコントローラーを動かす


>UPDATE
UIリストを更新する
なおbpatcher読み込み後は親パッチロード時に再度リストアップされるので
UIに変更があった場合に利用。
オートメーション設定とUIリストは独立しているのでUIオブジェクトのScripting Name及び階層に変更がなければ
別のUIに変更があった場合もオートメーションされた設定はそのまま残る

・三角アイコン
リストビューを表示する。

・DELETE
リストビューから削除したいオートメーション設定を選択後DELTEクリックで登録が解除される

・RESET
全てのオートメーション設定を破棄


対応しているUIオブジェクト
dial/flonum/number/multislider/slider/dial/toggle/live.numbox/live.gain/live.slider/live.dial

MIDIデバイス設定はないのでMIDI chでどうにかしてください。


embedモード
通常ルートパッチの保存されている場所に設定用jsonファイルが保存されるがbpatcherのargumentsに
embed=1と記述するとパッチ自体に埋め込まれるようになる
なお親パッチャーの名前を変更すると読まれなくなるので注意


Q&A
リストビューの内容は変更できないのか
>編集モードはあるけどセルごとの権限設定ないのでできません。

multisliderが出てこない / 出すぎる
>scripting nameが設定されたmultisliderを見つけるとvarname.0 varname.1のような形でリストアップされています
個別の名前設定がないのでindex順になっているので1000個のmultisliderがある場合1000個追加されます
（今後ignore設定か何かどうにかする）










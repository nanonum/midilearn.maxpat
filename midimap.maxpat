{
	"patcher" : 	{
		"fileversion" : 1,
		"appversion" : 		{
			"major" : 6,
			"minor" : 1,
			"revision" : 9,
			"architecture" : "x64"
		}
,
		"rect" : [ 72.0, 74.0, 1108.0, 571.0 ],
		"bgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
		"bglocked" : 0,
		"openinpresentation" : 1,
		"default_fontsize" : 12.0,
		"default_fontface" : 0,
		"default_fontname" : "DIN Alternate Bold",
		"gridonopen" : 0,
		"gridsize" : [ 15.0, 15.0 ],
		"gridsnaponopen" : 0,
		"statusbarvisible" : 2,
		"toolbarvisible" : 1,
		"boxanimatetime" : 200,
		"imprint" : 0,
		"enablehscroll" : 1,
		"enablevscroll" : 1,
		"devicewidth" : 0.0,
		"description" : "",
		"digest" : "",
		"tags" : "",
		"boxes" : [ 			{
				"box" : 				{
					"fontname" : "DIN Alternate Bold",
					"fontsize" : 12.0,
					"id" : "obj-3",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 279.0, 54.0, 110.0, 20.0 ],
					"text" : "prepend slidetoggle"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "DIN Alternate Bold",
					"fontsize" : 12.0,
					"id" : "obj-61",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 59.0, 515.0, 70.0, 20.0 ],
					"text" : "prepend set"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.127421, 0.127417, 0.12742, 1.0 ],
					"fontname" : "DIN Alternate Bold",
					"fontsize" : 10.0,
					"frgb" : 0.0,
					"id" : "obj-58",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 59.0, 543.0, 130.0, 18.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 49.0, 258.0, 434.0, 18.0 ],
					"text" : "PARAMETER",
					"textcolor" : [ 0.748738, 0.906562, 0.912242, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "DIN Alternate Bold",
					"fontsize" : 12.0,
					"id" : "obj-53",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 4,
					"outlettype" : [ "int", "int", "", "" ],
					"patching_rect" : [ 17.0, 487.0, 82.0, 20.0 ],
					"text" : "unpack 0 0 s s"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "DIN Alternate Bold",
					"fontsize" : 12.0,
					"id" : "obj-32",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 113.0, 54.0, 87.0, 20.0 ],
					"text" : "prepend reload"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.277402, 0.317083, 0.316265, 1.0 ],
					"bgoncolor" : [ 0.208644, 1.0, 0.921516, 1.0 ],
					"bgovercolor" : [ 0.277402, 0.317083, 0.316265, 1.0 ],
					"border" : 0,
					"bordercolor" : [ 0.088473, 0.087891, 0.105236, 1.0 ],
					"borderoncolor" : [ 0.088473, 0.087891, 0.105236, 1.0 ],
					"fontname" : "DIN Alternate Bold",
					"fontsize" : 10.0,
					"id" : "obj-28",
					"maxclass" : "textbutton",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 113.0, 21.0, 48.0, 16.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 349.0, 0.0, 56.0, 16.0 ],
					"rounded" : 0.0,
					"text" : "UPDATE",
					"textcolor" : [ 0.748738, 0.906562, 0.912242, 1.0 ],
					"textovercolor" : [ 0.748738, 0.906562, 0.912242, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "DIN Alternate Bold",
					"fontsize" : 12.0,
					"id" : "obj-26",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 17.0, 54.0, 81.0, 20.0 ],
					"text" : "prepend reset"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.277402, 0.317083, 0.316265, 1.0 ],
					"bgoncolor" : [ 0.208644, 1.0, 0.921516, 1.0 ],
					"bgovercolor" : [ 0.277402, 0.317083, 0.316265, 1.0 ],
					"border" : 0,
					"bordercolor" : [ 0.088473, 0.087891, 0.105236, 1.0 ],
					"borderoncolor" : [ 0.088473, 0.087891, 0.105236, 1.0 ],
					"fontname" : "DIN Alternate Bold",
					"fontsize" : 10.0,
					"id" : "obj-18",
					"maxclass" : "textbutton",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 17.0, 21.0, 48.0, 16.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 0.0, 258.0, 48.0, 18.0 ],
					"rounded" : 0.0,
					"text" : "RESET",
					"textcolor" : [ 0.748738, 0.906562, 0.912242, 1.0 ],
					"textovercolor" : [ 0.748738, 0.906562, 0.912242, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.277402, 0.317083, 0.316265, 1.0 ],
					"bgoncolor" : [ 0.748738, 0.906562, 0.912242, 1.0 ],
					"bgovercolor" : [ 0.277402, 0.317083, 0.316265, 1.0 ],
					"bgoveroncolor" : [ 0.748738, 0.906562, 0.912242, 1.0 ],
					"border" : 0,
					"bordercolor" : [ 0.088473, 0.087891, 0.105236, 1.0 ],
					"borderoncolor" : [ 0.088473, 0.087891, 0.105236, 1.0 ],
					"fontname" : "DIN Alternate Bold",
					"fontsize" : 5.0,
					"id" : "obj-16",
					"maxclass" : "textbutton",
					"mode" : 1,
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 284.5, 21.0, 16.0, 16.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 465.0, 0.0, 18.0, 16.0 ],
					"rounded" : 0.0,
					"text" : "▼",
					"textcolor" : [ 0.748738, 0.906562, 0.912242, 1.0 ],
					"texton" : "▲",
					"textovercolor" : [ 0.748738, 0.906562, 0.912242, 1.0 ],
					"textoveroncolor" : [ 1.0, 0.999974, 0.999991, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "DIN Alternate Bold",
					"fontsize" : 12.0,
					"id" : "obj-105",
					"maxclass" : "number",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "int", "bang" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 136.0, 113.0, 50.0, 20.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "DIN Alternate Bold",
					"fontsize" : 12.0,
					"id" : "obj-103",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 136.0, 133.0, 54.0, 18.0 ],
					"text" : "target $1"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "DIN Alternate Bold",
					"fontsize" : 12.0,
					"id" : "obj-97",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 113.0, 158.0, 113.0, 20.0 ],
					"text" : "poly~ midimap_poly"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "DIN Alternate Bold",
					"fontsize" : 12.0,
					"id" : "obj-71",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patcher" : 					{
						"fileversion" : 1,
						"appversion" : 						{
							"major" : 6,
							"minor" : 1,
							"revision" : 9,
							"architecture" : "x64"
						}
,
						"rect" : [ 50.0, 95.0, 923.0, 589.0 ],
						"bglocked" : 0,
						"openinpresentation" : 0,
						"default_fontsize" : 12.0,
						"default_fontface" : 0,
						"default_fontname" : "DIN Alternate Bold",
						"gridonopen" : 0,
						"gridsize" : [ 15.0, 15.0 ],
						"gridsnaponopen" : 0,
						"statusbarvisible" : 2,
						"toolbarvisible" : 1,
						"boxanimatetime" : 200,
						"imprint" : 0,
						"enablehscroll" : 1,
						"enablevscroll" : 1,
						"devicewidth" : 0.0,
						"description" : "",
						"digest" : "",
						"tags" : "",
						"boxes" : [ 							{
								"box" : 								{
									"fontname" : "DIN Alternate Bold",
									"fontsize" : 12.0,
									"id" : "obj-2",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 245.0, 276.0, 50.0, 18.0 ]
								}

							}
, 							{
								"box" : 								{
									"fontname" : "DIN Alternate Bold",
									"fontsize" : 12.0,
									"id" : "obj-23",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 124.5, 255.0, 90.0, 20.0 ],
									"text" : "prepend unbind"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "DIN Alternate Bold",
									"fontsize" : 12.0,
									"id" : "obj-22",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 2,
									"outlettype" : [ "bang", "" ],
									"patching_rect" : [ 109.5, 224.0, 34.0, 20.0 ],
									"text" : "sel 0"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "DIN Alternate Bold",
									"fontsize" : 12.0,
									"id" : "obj-21",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "bang", "bang" ],
									"patching_rect" : [ 57.0, 131.0, 71.5, 20.0 ],
									"text" : "t b b"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "DIN Alternate Bold",
									"fontsize" : 12.0,
									"id" : "obj-20",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 57.0, 160.0, 43.0, 18.0 ],
									"text" : "set 0 0"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "DIN Alternate Bold",
									"fontsize" : 12.0,
									"id" : "obj-10",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 180.5, 159.0, 70.0, 20.0 ],
									"text" : "prepend set"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "DIN Alternate Bold",
									"fontsize" : 12.0,
									"id" : "obj-9",
									"maxclass" : "number",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "int", "bang" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 109.5, 196.0, 50.0, 20.0 ]
								}

							}
, 							{
								"box" : 								{
									"fontname" : "DIN Alternate Bold",
									"fontsize" : 12.0,
									"id" : "obj-6",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "int", "int" ],
									"patching_rect" : [ 135.5, 131.0, 64.0, 20.0 ],
									"text" : "unpack 0 0"
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-30",
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 57.0, 95.0, 25.0, 25.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-31",
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "list" ],
									"patching_rect" : [ 135.5, 95.0, 25.0, 25.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-32",
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 57.0, 326.0, 25.0, 25.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-33",
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 124.5, 326.0, 25.0, 25.0 ]
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"destination" : [ "obj-9", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-10", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-32", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-20", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-20", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-21", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-9", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-21", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-2", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-22", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-23", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-22", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-33", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-23", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-21", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-30", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-6", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-31", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-10", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-6", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-22", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-9", 0 ]
								}

							}
 ]
					}
,
					"patching_rect" : [ 214.0, 54.0, 50.0, 20.0 ],
					"saved_object_attributes" : 					{
						"default_fontface" : 0,
						"default_fontname" : "DIN Alternate Bold",
						"default_fontsize" : 12.0,
						"description" : "",
						"digest" : "",
						"fontface" : 0,
						"fontname" : "DIN Alternate Bold",
						"fontsize" : 12.0,
						"globalpatchername" : "",
						"tags" : ""
					}
,
					"text" : "p delete"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "DIN Alternate Bold",
					"fontsize" : 12.0,
					"id" : "obj-20",
					"maxclass" : "newobj",
					"numinlets" : 3,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patcher" : 					{
						"fileversion" : 1,
						"appversion" : 						{
							"major" : 6,
							"minor" : 1,
							"revision" : 9,
							"architecture" : "x64"
						}
,
						"rect" : [ 443.0, 74.0, 640.0, 480.0 ],
						"bglocked" : 0,
						"openinpresentation" : 0,
						"default_fontsize" : 12.0,
						"default_fontface" : 0,
						"default_fontname" : "DIN Alternate Bold",
						"gridonopen" : 0,
						"gridsize" : [ 15.0, 15.0 ],
						"gridsnaponopen" : 0,
						"statusbarvisible" : 2,
						"toolbarvisible" : 1,
						"boxanimatetime" : 200,
						"imprint" : 0,
						"enablehscroll" : 1,
						"enablevscroll" : 1,
						"devicewidth" : 0.0,
						"description" : "",
						"digest" : "",
						"tags" : "",
						"boxes" : [ 							{
								"box" : 								{
									"fontname" : "DIN Alternate Bold",
									"fontsize" : 12.0,
									"id" : "obj-33",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 49.0, 418.0, 81.0, 20.0 ],
									"text" : "prepend learn"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "DIN Alternate Bold",
									"fontsize" : 12.0,
									"id" : "obj-26",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 49.0, 390.0, 36.0, 20.0 ],
									"text" : "zl.reg"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "DIN Alternate Bold",
									"fontsize" : 12.0,
									"id" : "obj-20",
									"maxclass" : "newobj",
									"numinlets" : 3,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 89.5, 356.0, 129.0, 20.0 ],
									"text" : "pack 0 0 s"
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-15",
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 141.5, 103.0, 25.0, 25.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-16",
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 20.0, 103.0, 25.0, 25.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-18",
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 199.5, 103.0, 25.0, 25.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-19",
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 49.0, 453.0, 25.0, 25.0 ]
								}

							}
, 							{
								"box" : 								{
									"fontname" : "DIN Alternate Bold",
									"fontsize" : 12.0,
									"id" : "obj-9",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "bang", "bang" ],
									"patching_rect" : [ 49.0, 240.0, 32.5, 20.0 ],
									"text" : "t b b"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "DIN Alternate Bold",
									"fontsize" : 12.0,
									"frgb" : 0.0,
									"id" : "obj-5",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 187.5, 279.0, 150.0, 20.0 ],
									"text" : "clear"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "DIN Alternate Bold",
									"fontsize" : 12.0,
									"id" : "obj-2",
									"maxclass" : "newobj",
									"numinlets" : 3,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 141.5, 279.0, 46.0, 20.0 ],
									"text" : "0 0 17"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "DIN Alternate Bold",
									"fontsize" : 12.0,
									"id" : "obj-4",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "bang", "bang" ],
									"patching_rect" : [ 141.5, 178.0, 55.0, 20.0 ],
									"text" : "cmdclick"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "DIN Alternate Bold",
									"fontsize" : 12.0,
									"id" : "obj-160",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 3,
									"outlettype" : [ "int", "int", "int" ],
									"patching_rect" : [ 62.5, 103.0, 62.0, 20.0 ],
									"text" : "ctlin"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "DIN Alternate Bold",
									"fontsize" : 12.0,
									"id" : "obj-117",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 3,
									"outlettype" : [ "int", "int", "int" ],
									"patching_rect" : [ 62.5, 325.5, 73.0, 20.0 ],
									"text" : "unpack 0 0 0"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "DIN Alternate Bold",
									"fontsize" : 12.0,
									"id" : "obj-105",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 62.5, 279.0, 38.0, 20.0 ],
									"text" : "zl.reg"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "DIN Alternate Bold",
									"fontsize" : 12.0,
									"id" : "obj-96",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "bang", "" ],
									"patching_rect" : [ 62.5, 178.0, 38.0, 20.0 ],
									"text" : "t b l"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "DIN Alternate Bold",
									"fontsize" : 12.0,
									"id" : "obj-83",
									"maxclass" : "newobj",
									"numinlets" : 3,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 62.5, 132.0, 62.0, 20.0 ],
									"text" : "pack 0 0 0"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "DIN Alternate Bold",
									"fontsize" : 12.0,
									"id" : "obj-78",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 2,
									"outlettype" : [ "bang", "bang" ],
									"patching_rect" : [ 62.5, 205.0, 134.0, 20.0 ],
									"text" : "onebang"
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"destination" : [ "obj-117", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-105", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-20", 1 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-117", 2 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-20", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-117", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-4", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-15", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-96", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-16", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-83", 2 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-160", 2 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-83", 1 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-160", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-83", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-160", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-20", 2 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-18", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-117", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-2", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-26", 1 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-20", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-33", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-26", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-19", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-33", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-2", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-4", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-78", 1 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-4", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-9", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-78", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-96", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-83", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-105", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-9", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-26", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-9", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-105", 1 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-96", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-78", 0 ],
									"disabled" : 0,
									"hidden" : 0,
									"source" : [ "obj-96", 0 ]
								}

							}
 ]
					}
,
					"patching_rect" : [ 17.0, 199.0, 46.0, 20.0 ],
					"saved_object_attributes" : 					{
						"default_fontface" : 0,
						"default_fontname" : "DIN Alternate Bold",
						"default_fontsize" : 12.0,
						"description" : "",
						"digest" : "",
						"fontface" : 0,
						"fontname" : "DIN Alternate Bold",
						"fontsize" : 12.0,
						"globalpatchername" : "",
						"tags" : ""
					}
,
					"text" : "p learn"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "DIN Alternate Bold",
					"fontsize" : 12.0,
					"id" : "obj-63",
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 385.0, 181.0, 151.0, 18.0 ],
					"text" : "clearchecks, checkitem $1 1"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.277402, 0.317083, 0.316265, 1.0 ],
					"bgoncolor" : [ 0.208644, 1.0, 0.921516, 1.0 ],
					"bgovercolor" : [ 0.277402, 0.317083, 0.316265, 1.0 ],
					"border" : 0,
					"bordercolor" : [ 0.088473, 0.087891, 0.105236, 1.0 ],
					"borderoncolor" : [ 0.088473, 0.087891, 0.105236, 1.0 ],
					"fontname" : "DIN Alternate Bold",
					"fontsize" : 10.0,
					"id" : "obj-45",
					"maxclass" : "textbutton",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 214.0, 21.0, 48.0, 16.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 406.0, 0.0, 58.0, 16.0 ],
					"rounded" : 0.0,
					"text" : "DELETE",
					"textcolor" : [ 0.748738, 0.906562, 0.912242, 1.0 ],
					"textovercolor" : [ 0.748738, 0.906562, 0.912242, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"arrow" : 0,
					"bgcolor" : [ 0.090196, 0.086275, 0.105882, 1.0 ],
					"bgcolor2" : [ 0.243137, 0.231373, 0.243137, 1.0 ],
					"discolor" : [ 1.0, 0.999974, 0.999991, 1.0 ],
					"fontname" : "DIN Alternate Bold",
					"fontsize" : 10.0,
					"framecolor" : [ 0.501961, 0.501961, 0.501961, 0.0 ],
					"hltcolor" : [ 0.207843, 1.0, 0.921569, 1.0 ],
					"id" : "obj-190",
					"items" : "<empty>",
					"maxclass" : "umenu",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "int", "", "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 65.0, 181.0, 320.0, 18.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 57.0, -1.0, 292.0, 18.0 ],
					"rounded" : 0,
					"textcolor" : [ 0.748738, 0.906562, 0.912242, 1.0 ],
					"textcolor2" : [ 0.748738, 0.906562, 0.912242, 1.0 ],
					"togcolor" : [ 0.748738, 0.906562, 0.912242, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-37",
					"maxclass" : "dict.view",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 499.0, 239.0, 237.0, 240.0 ]
				}

			}
, 			{
				"box" : 				{
					"data" : 					{

					}
,
					"fontname" : "DIN Alternate Bold",
					"fontsize" : 12.0,
					"id" : "obj-36",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 4,
					"outlettype" : [ "dictionary", "", "", "" ],
					"patching_rect" : [ 499.0, 148.0, 59.5, 20.0 ],
					"saved_object_attributes" : 					{
						"embed" : 1,
						"parameter_enable" : 0
					}
,
					"text" : "dict"
				}

			}
, 			{
				"box" : 				{
					"fontname" : "DIN Alternate Bold",
					"fontsize" : 12.0,
					"id" : "obj-29",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 4,
					"outlettype" : [ "", "", "", "" ],
					"patching_rect" : [ 17.0, 85.0, 163.0, 20.0 ],
					"saved_object_attributes" : 					{
						"filename" : "midimap.js",
						"parameter_enable" : 0
					}
,
					"text" : "js midimap.js"
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.277402, 0.317083, 0.316265, 1.0 ],
					"bgoncolor" : [ 0.208644, 1.0, 0.921516, 1.0 ],
					"bgovercolor" : [ 0.277402, 0.317083, 0.316265, 1.0 ],
					"border" : 0,
					"bordercolor" : [ 0.088473, 0.087891, 0.105236, 1.0 ],
					"borderoncolor" : [ 0.088473, 0.087891, 0.105236, 1.0 ],
					"fontname" : "DIN Alternate Bold",
					"fontsize" : 10.0,
					"id" : "obj-12",
					"maxclass" : "textbutton",
					"numinlets" : 1,
					"numoutlets" : 3,
					"outlettype" : [ "", "", "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 30.5, 133.0, 48.0, 16.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 0.0, 0.0, 57.0, 16.0 ],
					"rounded" : 0.0,
					"text" : "LEARN",
					"textcolor" : [ 0.748738, 0.906562, 0.912242, 1.0 ],
					"textovercolor" : [ 0.748738, 0.906562, 0.912242, 1.0 ]
				}

			}
, 			{
				"box" : 				{
					"bgcolor" : [ 0.277402, 0.317083, 0.316265, 1.0 ],
					"border" : 0,
					"cellmap" : [ [ 0, 0, "PARAMETER" ], [ 1, 0, "PATH" ], [ 2, 0, "CC NUMBER" ], [ 3, 0, "MIDI CH" ], [ 4, 0, "MIN" ], [ 5, 0, "MAX" ], [ 6, 0, "CLASS" ], [ 7, 0, "MULTISLIDER" ] ],
					"colhead" : 1,
					"cols" : 8,
					"colwidth" : 58,
					"fgcolor" : [ 0.748738, 0.906562, 0.912242, 1.0 ],
					"fontname" : "DIN Alternate Bold",
					"fontsize" : 10.0,
					"gridlinecolor" : [ 0.088473, 0.087891, 0.105236, 1.0 ],
					"hcellcolor" : [ 0.208644, 1.0, 0.921516, 0.42 ],
					"headercolor" : [ 0.242585, 0.231328, 0.242859, 1.0 ],
					"hscroll" : 0,
					"id" : "obj-8",
					"interval" : 800,
					"maxclass" : "jit.cellblock",
					"numinlets" : 2,
					"numoutlets" : 4,
					"outlettype" : [ "list", "", "", "" ],
					"outmode" : 1,
					"patching_rect" : [ 17.0, 239.0, 482.0, 240.0 ],
					"presentation" : 1,
					"presentation_rect" : [ 0.0, 17.0, 483.0, 240.0 ],
					"rowhead" : 1,
					"rowheight" : 16,
					"rows" : 1,
					"savemode" : 1,
					"selmode" : 3,
					"stcolor" : [ 0.277402, 0.317083, 0.316265, 1.0 ],
					"textcolor" : [ 0.748738, 0.906562, 0.912242, 1.0 ]
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"destination" : [ "obj-97", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-103", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-103", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-105", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-190", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-12", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-20", 1 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-12", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-3", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-16", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-26", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-18", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-20", 2 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-190", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-63", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-190", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-29", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"midpoints" : [ 26.5, 222.0, 10.0, 222.0, 10.0, 67.0, 26.5, 67.0 ],
					"source" : [ "obj-20", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-29", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-26", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-32", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-28", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-190", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-29", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-36", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-29", 3 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-8", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-29", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-97", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-29", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-29", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-3", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-29", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-32", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-37", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-36", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-71", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-45", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-61", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-53", 2 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-58", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-61", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-190", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-63", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-29", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-71", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-8", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-71", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-53", 0 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-8", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-71", 1 ],
					"disabled" : 0,
					"hidden" : 0,
					"source" : [ "obj-8", 0 ]
				}

			}
 ],
		"dependency_cache" : [ 			{
				"name" : "midimap.js",
				"bootpath" : "/Users/nanonum/Dropbox/MAX/UI/midimap",
				"patcherrelativepath" : ".",
				"type" : "TEXT",
				"implicit" : 1
			}
, 			{
				"name" : "cmdclick.maxpat",
				"bootpath" : "/Users/nanonum/Dropbox/MAX/path",
				"patcherrelativepath" : "../../path",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "midimap_poly.maxpat",
				"bootpath" : "/Users/nanonum/Dropbox/MAX/UI/midimap",
				"patcherrelativepath" : ".",
				"type" : "JSON",
				"implicit" : 1
			}
 ]
	}

}

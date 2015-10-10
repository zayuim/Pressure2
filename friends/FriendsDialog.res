"Friends/FriendsDialog.res" {
	colors {
		PropertySheet.TabGap 1
	}

	styles {
		FriendsPanel {			
			bgcolor=custombackgroundnofocus
			render {
				1="image_tiled(x0,y0+137,x1,y0+141, graphics\material\shadows\top)"
				2="image_tiled(x0,y1-50,x1,y1-46, graphics\material\shadows\bottom)"
			}
			
			render_bg {
				// fill in the bottom area
				0="fill( x0, y1 - 46, x1, y1, customgreyprimary )"
				1="fill(x0, y1-46, x1, y1-45, customgreyaccent)"
				
				
				//Apply the subnav
				2="fill(x0,y0+55,x1,y0+137, customgreysecondary)"				
			}
		}

			FriendsPanel:FrameFocus {
				bgcolor=custombackgroundprimary
			}	
		
		FrameTitle {
			bgcolor="customgreyprimary"
			font-family=basefont
			font-size=24
			font-weight=400
			inset="0 0 0 0"
			minimum-height=55
			textcolor=none			
			render_bg {
				// Adds the 1 pixel highlight on the top of the title bar.
				0="fill(x0,y0,x1,y0+1, customgreyaccent)"
			}
		}
		
			FrameTitle:framefocus {
				textcolor=none
			}


		"MenuBar MenuButton" {
			bgcolor="none"
			minimum-height=35
			minimum-width=35
			textcolor=none
			
			render_bg {
				0="image(x0+5,y0+5,x1,y1, graphics/icons/friendmenu/standard/friendmenu)"
			}
		}
		
			"MenuBar MenuButton:hover" {
				render_bg {
					0="image(x0+5,y0+5,x1,y1, graphics/icons/friendmenu/hover/friendmenu)"
				}
			}

			"MenuBar MenuButton:selected" {
				render {
					0="image(x0,y0,x1,y1, graphics/icons/friendmenu/active/friendmenu)"
				}
			}






			PageTab {
				//minimum-height=34
				minimum-width=110
				padding-left=6
				padding-right=36
				textcolor=white
				font-size=16
				font-style=regular
				textcolor=secondarytext_onDarkBG
				inset-top=-1

				render_bg {}
			}

				PageTab:Hover {
					textcolor=text_onDarkBG

					render_bg {
						1="image(x0,y0,x0+2,y0+2, graphics/material/tab/white/topleft)"
						2="image_tiled(x0+2,y0,x1-2, y0+2, graphics/material/tab/white/middle)"
						3="image_tiled(x0,y0+2,x1, y1, graphics/material/tab/white/middle)"
						4="image(x1-2,y0,x1,y0+2, graphics/material/tab/white/topright)"
					}
				}

				PageTab:Selected {
					textcolor=blue500

					render_bg {
						0="fill(x0,y1-3,x1,y1, blue500)"
						1="image(x0,y0,x0+2,y0+2, graphics/material/tab/blue/topleft)"
						2="image_tiled(x0+2,y0,x1-2, y0+2, graphics/material/tab/blue/middle)"
						3="image_tiled(x0,y0+2,x1, y1, graphics/material/tab/blue/middle)"
						4="image(x1-2,y0,x1,y0+2, graphics/material/tab/blue/topright)"
					}
				}

				PageTab:Selected:hover {
					textcolor=blue300

					render_bg {
						0="fill(x0,y1-3,x1,y1, blue300)"
						1="image(x0,y0,x0+2,y0+2, graphics/material/tab/blue/topleft)"
						2="image_tiled(x0+2,y0,x1-2, y0+2, graphics/material/tab/blue/middle)"
						3="image_tiled(x0,y0+2,x1, y1, graphics/material/tab/blue/middle)"
						4="image(x1-2,y0,x1,y0+2, graphics/material/tab/blue/topright)"
					}
				}



    CFriendsListSectionAffordance {}
    
    CFriendsListSectionHeader {
    	bgcolor=white

    	render_bg {
    		0="fill(x0,y0,x1,y0+1, dividers_onLightBG)"
    		1="fill(x0,y1-1,x1,y1, dividers_onLightBG)"
    	}
    }
            
    CFriendPanel {}

	Page {
		bgcolor=none
		font-family=basefont
		font-style="none"
		inset="0 0 0 0"

		render {}
	}

    "CFriendsDialog SectionedListPanel" {}
   
    "CFriendsDialog SectionedListPanelInterior" {
    	inset="0 0 0 0"
    }   

		AddFriendsButton {}
		  
		AddFriendsButton:hover {}	  	
		
		RootMenu {
			bgcolor=none
		} 
	

		SectionedListPanelCollapser {}

    
    "CFriendsDialog PropertySheet" {
        bgcolor="none"
        inset="0 0 0 0"
    }

    Panel {
    	inset="0 0 0 0"
    }

		FriendsSearch {
			padding-left=0
			font-family=basefont
			font-size=18
			font-weight=400
			textcolor="text_onLightBG"
			inset-top=0
			inset-left=1
			bgcolor=custombackgroundprimary
			
			render {
				0="fill(x0-40,y1-1,x1,y1, divider)"
			}
		}
		
			FriendsSearch:selected {}
			
			FriendsSearch:empty {
				font-style=italic
				textcolor="disabled_onLightBG"
			}
			
			FriendsSearch:hover {
				textcolor="text_onLightBG"
			}
			
			FriendsSearch:empty:hover {
				textcolor="secondaryText_onLightBG"
			}
			
			FriendsSearch:disabled {
				font-style=italic
				textcolor="disabled_onLightBG"
			}
		
		FriendsSearchIcon {
			bgcolor=custombackgroundprimary
			textcolor=none
			
			render_bg {
				-1="fill(x1,y0,x1+10,y1, custombackgroundprimary)"
				0="image(x0+14,y0+13,x1,y1, graphics/icons/search/standard)"
				1="fill(x0,y1-1,x1+25,y1, divider)"
			}
		}
		
			FriendsSearchIcon:disabled {}
	}
 	
 	layout {
		place { control="frame_title" visible=0 x=0 y=0 width=max height=0 }

		place [!$OSX]  {
			control="frame_minimize,frame_maximize,frame_close"
			align=right
			margin-top=16
			margin-right=15
			spacing=1
		}

 		// the title bar is missing, so increase the size of the grip
		place {
			control="frame_captiongrip"
			width=max
			height=55
		}

		place {
			control="MenuBar"
			width=45
			height=45
			x=6
			y=6
		}
		
		region {
			name="subnav"
			width=max
			height=45
			y=55
		}
		
		place {
			control="friends_search"
			width=max
		}
		
		place {
			control=friends_search_icon
			width=40
		}
		
		place {
			control="friends_search_icon,friends_search"
			align=left
			height=max
			region=subnav
			spacing=8
		}		

		place {
			control="FriendPanelSelf"
			x=3
			align=bottom
			margin-bottom=4
			height=40
		}
		
		place {
			control="FriendsDialogSheet"
			start=friends_search_icon
			y=-1
			dir=down
			width=max
			height=max
			margin-bottom=46
			spacing=0
		}	
		
		place {
			control="addFriendsButton"
			width=0
			height=0
		}
 	}
}
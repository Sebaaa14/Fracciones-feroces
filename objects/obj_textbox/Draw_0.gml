/// @description Draw textbox

// Draw textbox
draw_self();

// Draw Text
draw_set_font(font_textbox);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
//draw_text_ext_color(x,y,textToShow,lineHeight,textWidth,c_black,c_black,c_black,c_black,image_alpha);
/*if (room= rm_gameMain){
	draw_text_ext_color(x,y,textoCerdito,lineHeight,textWidth,c_black,c_black,c_black,c_black,image_alpha);
	}*/

switch (room) {
    case rm_gameMain:
        draw_text_ext_color(x,y,textoCerditoLVL1,lineHeight,textWidth,c_black,c_black,c_black,c_black,image_alpha);
        break;
    case rm_level2:
       draw_text_ext_color(x,y,textoCerditoLVL2,lineHeight,textWidth,c_black,c_black,c_black,c_black,image_alpha);
        break;
    case rm_level3:
       draw_text_ext_color(x,y,textoCerditoLVL3,lineHeight,textWidth,c_black,c_black,c_black,c_black,image_alpha);
        break;
    default:
        break;
}

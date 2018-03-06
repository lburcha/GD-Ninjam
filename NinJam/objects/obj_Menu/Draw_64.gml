/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 7D1383BC
/// @DnDArgument : "code" "draw_set_halign(fa_left);$(13_10)draw_set_valign(fa_middle);$(13_10)draw_set_color(c_white);$(13_10)$(13_10)var i;$(13_10)for (i=0;i<array_length_1d(menu);i+=1)$(13_10){$(13_10)	draw_text(x+64,y+(i*64),string(menu[i]));$(13_10)}"
draw_set_halign(fa_left);
draw_set_valign(fa_middle);
draw_set_color(c_white);

var i;
for (i=0;i<array_length_1d(menu);i+=1)
{
	draw_text(x+64,y+(i*64),string(menu[i]));
}
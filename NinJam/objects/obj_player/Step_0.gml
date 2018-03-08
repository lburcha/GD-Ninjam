/// @DnDAction : YoYo Games.Movement.Set_Direction_Point
/// @DnDVersion : 1
/// @DnDHash : 57CB88B1
direction = point_direction(x, y, 0, 0);

/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 6D1AA14E
/// @DnDArgument : "code" "var bbox_side;$(13_10)$(13_10)key_r = keyboard_check(vk_right);$(13_10)key_l = keyboard_check(vk_left);$(13_10)key_u = keyboard_check(vk_up);$(13_10)key_d = keyboard_check(vk_down);$(13_10)$(13_10)hsp = (key_r - key_l) *2;$(13_10)vsp = (key_d - key_u) *2;$(13_10)$(13_10)//horizontal collision$(13_10)if(hsp>0) bbox_side = bbox_right; else bbox_side = bbox_left;$(13_10)$(13_10)if(tilemap_get_at_pixel(tilemap, bbox_side+hsp,bbox_top) != 0 || tilemap_get_at_pixel(tilemap, bbox_side+hsp,bbox_bottom)!=0)  $(13_10){$(13_10)	if(hsp>0) x= x-(x mod 32) + 31-(bbox_right-x);$(13_10)	else x = x-(x mod 32) - (bbox_left - x);$(13_10)	$(13_10)	hsp=0;$(13_10)}$(13_10)$(13_10)//vertical collision$(13_10)if(vsp>0) bbox_side = bbox_bottom; else bbox_side = bbox_top;$(13_10)$(13_10)if(tilemap_get_at_pixel(tilemap,bbox_left, bbox_side+vsp) != 0 || tilemap_get_at_pixel(tilemap, bbox_right,bbox_side+vsp)!=0)  $(13_10){$(13_10)	if(vsp>0) y= y-(y mod 32) + 31-(bbox_bottom-y);$(13_10)	else y = y-(y mod 32) - (bbox_top - y);$(13_10)	$(13_10)	vsp=0;$(13_10)}"
var bbox_side;

key_r = keyboard_check(vk_right);
key_l = keyboard_check(vk_left);
key_u = keyboard_check(vk_up);
key_d = keyboard_check(vk_down);

hsp = (key_r - key_l) *2;
vsp = (key_d - key_u) *2;

//horizontal collision
if(hsp>0) bbox_side = bbox_right; else bbox_side = bbox_left;

if(tilemap_get_at_pixel(tilemap, bbox_side+hsp,bbox_top) != 0 || tilemap_get_at_pixel(tilemap, bbox_side+hsp,bbox_bottom)!=0)  
{
	if(hsp>0) x= x-(x mod 32) + 31-(bbox_right-x);
	else x = x-(x mod 32) - (bbox_left - x);
	
	hsp=0;
}

//vertical collision
if(vsp>0) bbox_side = bbox_bottom; else bbox_side = bbox_top;

if(tilemap_get_at_pixel(tilemap,bbox_left, bbox_side+vsp) != 0 || tilemap_get_at_pixel(tilemap, bbox_right,bbox_side+vsp)!=0)  
{
	if(vsp>0) y= y-(y mod 32) + 31-(bbox_bottom-y);
	else y = y-(y mod 32) - (bbox_top - y);
	
	vsp=0;
}
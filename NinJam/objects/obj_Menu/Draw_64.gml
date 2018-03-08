/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 7D1383BC
/// @DnDArgument : "code" "$(13_10)var ds_grid = menu_pages[page], ds_height = ds_grid_height(ds_grid);$(13_10)var y_buffer = 32, x_buffer = 32;$(13_10)var start_y = (global.view_height/2) - (((ds_height-1)/ 2)*y_buffer), start_x = global.view_width/2; $(13_10)var txt_color = c_white;$(13_10)$(13_10)//Draw Text $(13_10)draw_set_halign(fa_right);$(13_10)draw_set_valign(fa_middle);$(13_10)draw_set_color(c_white);$(13_10)$(13_10)$(13_10)var i, ltx = start_x - x_buffer, lty;$(13_10)for (i=0;i<ds_height;i+=1)$(13_10){$(13_10)	lty = start_y +(i*y_buffer)$(13_10)	txt_color = c_white;$(13_10)	$(13_10)	if (i == menu_option[page])$(13_10)	{$(13_10)		txt_color = c_orange;$(13_10)	}$(13_10)	$(13_10)	draw_text_color(ltx,lty,ds_grid[# 0,i],txt_color,txt_color,txt_color,txt_color,1);$(13_10)}$(13_10)$(13_10)//draw options$(13_10)draw_set_halign(fa_left);$(13_10)$(13_10)var rtx = start_x + x_buffer, rty, current_val, current_array;$(13_10)$(13_10)for(i=0; i<ds_height;i++)$(13_10){$(13_10)	rty = start_y + (i*y_buffer);$(13_10)	$(13_10)	switch(ds_grid[# 1, i])$(13_10)	{$(13_10)		case menu_element_type.shift: $(13_10)			current_val = ds_grid[# 3, i];$(13_10)			current_array = ds_grid[# 4, i];$(13_10)			var left_shift = "< ";$(13_10)			var right_shift = " >";$(13_10)			$(13_10)			if(current_val == 0) left_shift = "";$(13_10)			if(current_val == array_length_1d(ds_grid[# 4,i])-1) right_shift ="";$(13_10)			$(13_10)			c = c_white;$(13_10)			draw_text_color(rtx,rty,left_shift+current_array[current_val]+right_shift,c,c,c,c,1)$(13_10)		break;$(13_10)		$(13_10)		case menu_element_type.slider:$(13_10)			var len = 64;$(13_10)			current_val = ds_grid[# 3,i];$(13_10)			current_array = ds_grid[#4,i];$(13_10)			var circle_pos = (current_val - current_array[0])/(current_array[1]-current_array[0]);$(13_10)			c = c_white;$(13_10)			draw_line_width(rtx,rty,rtx+len,rty,2);$(13_10)			draw_circle_color(rtx + (circle_pos*len),rty,4,c,c,false);$(13_10)			draw_text_color(rtx+(len*1.2),rty,string(floor(circle_pos*100))+"%",c,c,c,c,1);$(13_10)		$(13_10)		break;$(13_10)		$(13_10)		case menu_element_type.toggle:$(13_10)			current_val = ds_grid[# 3,i];$(13_10)			var c1,c2;$(13_10)			c = c_white;$(13_10)			if(current_val == 0)$(13_10)			{$(13_10)				c1 = c;$(13_10)				c2 = c_dkgray;$(13_10)			}$(13_10)			else$(13_10)			{$(13_10)				c1 = c_dkgray;$(13_10)				c2 = c;$(13_10)			}$(13_10)			$(13_10)			draw_text_color(rtx,rty,"On",c1,c1,c1,c1,1);$(13_10)			draw_text_color(rtx+32,rty,"Off",c2,c2,c2,c2,1);$(13_10)		break;$(13_10)		$(13_10)		case menu_element_type.input:$(13_10)			current_val = ds_grid[# 2,i];$(13_10)			var string_val;$(13_10)			$(13_10)			switch(current_val)$(13_10)			{$(13_10)				case vk_up: string_val = "Up Key"; break;$(13_10)				case vk_left: string_val = "Left Key"; break;$(13_10)				case vk_right: string_val = "Right Key"; break;$(13_10)				case vk_down: string_val = "Down Key"; break;$(13_10)				case vk_shift: string_val = "Shift Key"; break;$(13_10)				case vk_space: string_val = "Space Key"; break;$(13_10)			}$(13_10)			$(13_10)			c = c_white;$(13_10)			draw_text_color(rtx,rty,string_val,c,c,c,c,1);$(13_10)		break;$(13_10)	}$(13_10)}$(13_10)"

var ds_grid = menu_pages[page], ds_height = ds_grid_height(ds_grid);
var y_buffer = 32, x_buffer = 32;
var start_y = (global.view_height/2) - (((ds_height-1)/ 2)*y_buffer), start_x = global.view_width/2; 
var txt_color = c_white;

//Draw Text 
draw_set_halign(fa_right);
draw_set_valign(fa_middle);
draw_set_color(c_white);


var i, ltx = start_x - x_buffer, lty;
for (i=0;i<ds_height;i+=1)
{
	lty = start_y +(i*y_buffer)
	txt_color = c_white;
	
	if (i == menu_option[page])
	{
		txt_color = c_orange;
	}
	
	draw_text_color(ltx,lty,ds_grid[# 0,i],txt_color,txt_color,txt_color,txt_color,1);
}

//draw options
draw_set_halign(fa_left);

var rtx = start_x + x_buffer, rty, current_val, current_array;

for(i=0; i<ds_height;i++)
{
	rty = start_y + (i*y_buffer);
	
	switch(ds_grid[# 1, i])
	{
		case menu_element_type.shift: 
			current_val = ds_grid[# 3, i];
			current_array = ds_grid[# 4, i];
			var left_shift = "< ";
			var right_shift = " >";
			
			if(current_val == 0) left_shift = "";
			if(current_val == array_length_1d(ds_grid[# 4,i])-1) right_shift ="";
			
			c = c_white;
			draw_text_color(rtx,rty,left_shift+current_array[current_val]+right_shift,c,c,c,c,1)
		break;
		
		case menu_element_type.slider:
			var len = 64;
			current_val = ds_grid[# 3,i];
			current_array = ds_grid[#4,i];
			var circle_pos = (current_val - current_array[0])/(current_array[1]-current_array[0]);
			c = c_white;
			draw_line_width(rtx,rty,rtx+len,rty,2);
			draw_circle_color(rtx + (circle_pos*len),rty,4,c,c,false);
			draw_text_color(rtx+(len*1.2),rty,string(floor(circle_pos*100))+"%",c,c,c,c,1);
		
		break;
		
		case menu_element_type.toggle:
			current_val = ds_grid[# 3,i];
			var c1,c2;
			c = c_white;
			if(current_val == 0)
			{
				c1 = c;
				c2 = c_dkgray;
			}
			else
			{
				c1 = c_dkgray;
				c2 = c;
			}
			
			draw_text_color(rtx,rty,"On",c1,c1,c1,c1,1);
			draw_text_color(rtx+32,rty,"Off",c2,c2,c2,c2,1);
		break;
		
		case menu_element_type.input:
			current_val = ds_grid[# 2,i];
			var string_val;
			
			switch(current_val)
			{
				case vk_up: string_val = "Up Key"; break;
				case vk_left: string_val = "Left Key"; break;
				case vk_right: string_val = "Right Key"; break;
				case vk_down: string_val = "Down Key"; break;
				case vk_shift: string_val = "Shift Key"; break;
				case vk_space: string_val = "Space Key"; break;
			}
			
			c = c_white;
			draw_text_color(rtx,rty,string_val,c,c,c,c,1);
		break;
	}
}
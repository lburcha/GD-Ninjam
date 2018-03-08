/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 7E597031
/// @DnDArgument : "code" "$(13_10)input_up_p = keyboard_check_pressed(vk_up);$(13_10)input_down_p = keyboard_check_pressed(vk_down);$(13_10)input_enter_p = keyboard_check_pressed(vk_enter);$(13_10)$(13_10)var ds_grid = menu_pages[page], ds_height = ds_grid_height(ds_grid);$(13_10)$(13_10)var ochange = input_down_p - input_up_p;$(13_10)$(13_10)menu_option[page] = modulo((menu_option[page] + ochange), ds_height);	$(13_10)$(13_10)if(input_enter_p)$(13_10){$(13_10)	switch(ds_grid[# 1, menu_option[page]])$(13_10)	{$(13_10)		case menu_element_type.page_transfer: page = ds_grid[# 2,menu_option[page]]; break;$(13_10)	}$(13_10)	//audio goes here for selecting menu option$(13_10)}"

input_up_p = keyboard_check_pressed(vk_up);
input_down_p = keyboard_check_pressed(vk_down);
input_enter_p = keyboard_check_pressed(vk_enter);

var ds_grid = menu_pages[page], ds_height = ds_grid_height(ds_grid);

var ochange = input_down_p - input_up_p;

menu_option[page] = modulo((menu_option[page] + ochange), ds_height);	

if(input_enter_p)
{
	switch(ds_grid[# 1, menu_option[page]])
	{
		case menu_element_type.page_transfer: page = ds_grid[# 2,menu_option[page]]; break;
	}
	//audio goes here for selecting menu option
}
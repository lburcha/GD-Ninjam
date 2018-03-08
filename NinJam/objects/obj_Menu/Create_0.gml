/// @DnDAction : YoYo Games.Movement.Jump_To_Point
/// @DnDVersion : 1
/// @DnDHash : 2D11B09F
/// @DnDArgument : "x" "room_width/2"
/// @DnDArgument : "y" "64"
x = room_width/2;
y = 64;

/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 40A87000
/// @DnDArgument : "code" "global.view_width = camera_get_view_width(view_camera[0]);$(13_10)global.view_height = camera_get_view_width(view_camera[0]);$(13_10)global.key_enter = vk_enter;$(13_10)global.key_up = vk_up;$(13_10)global.key_left = vk_left;$(13_10)global.key_right = vk_right;$(13_10)global.key_down = vk_down;$(13_10)global.key_attack = vk_shift;$(13_10)global.key_use = vk_space;$(13_10)$(13_10)display_set_gui_size(global.view_width, global.view_height);$(13_10)$(13_10)enum menu_page$(13_10){$(13_10)	main,$(13_10)	settings,$(13_10)	audio,$(13_10)	graphics,$(13_10)	controls,$(13_10)	height$(13_10)}$(13_10)$(13_10)enum menu_element_type$(13_10){$(13_10)	script_runner,$(13_10)	page_transfer,$(13_10)	slider,$(13_10)	shift,$(13_10)	toggle,$(13_10)	input$(13_10)}$(13_10)$(13_10)ds_menu_main = create_menu_page(	$(13_10)	["Start", menu_element_type.script_runner, start_game],$(13_10)	["Settings", menu_element_type.page_transfer, menu_page.settings],$(13_10)	["Quit", menu_element_type.script_runner, exit_game]$(13_10));$(13_10)$(13_10)ds_settings = create_menu_page($(13_10)	["Audio", menu_element_type.page_transfer, menu_page.audio],$(13_10)	["Graphics", menu_element_type.page_transfer, menu_page.graphics] ,$(13_10)	["Controls", menu_element_type.page_transfer, menu_page.controls],$(13_10)	["Back", menu_element_type.page_transfer, menu_page.main]$(13_10));$(13_10)$(13_10)ds_audio = create_menu_page($(13_10)	["Master", menu_element_type.slider,  change_volume,1,[0,1]],$(13_10)	["Sounds", menu_element_type.slider, change_volume,1,[0,1]],$(13_10)	["Music", menu_element_type.slider, change_volume,1,[0,1]],$(13_10)	["Back", menu_element_type.page_transfer, menu_page.settings]$(13_10));$(13_10)$(13_10)ds_graphics = create_menu_page($(13_10)	["Resolution", menu_element_type.shift, change_resolution, 0, ["364 x 216","768 x 432", "1152 x 648"]],$(13_10)	["Window Mode", menu_element_type.toggle, change_window_mode,1,["Fullscreen","Windowed"]] ,$(13_10)	["Back", menu_element_type.page_transfer, menu_page.settings]$(13_10));$(13_10)$(13_10)ds_controls = create_menu_page($(13_10)	["Up", menu_element_type.input, "key_up", vk_up],$(13_10)	["Left", menu_element_type.input, "key_left", vk_left] ,$(13_10)	["Right", menu_element_type.input, "key_right", vk_right],$(13_10)	["Down", menu_element_type.input, "key_down", vk_down],$(13_10)	["Attack", menu_element_type.input, "key_attack", vk_shift],$(13_10)	["Use", menu_element_type.input, "key_use", vk_space],$(13_10)	["Back", menu_element_type.page_transfer, menu_page.settings]$(13_10));$(13_10)$(13_10)page = 0;$(13_10)inputting = false;$(13_10)$(13_10)menu_pages = [ds_menu_main, ds_settings, ds_audio, ds_graphics, ds_controls];$(13_10)var i;$(13_10)for(i=0; i<array_length_1d(menu_pages); i++)$(13_10){$(13_10)	menu_option[i] = 0;$(13_10)}"
global.view_width = camera_get_view_width(view_camera[0]);
global.view_height = camera_get_view_width(view_camera[0]);
global.key_enter = vk_enter;
global.key_up = vk_up;
global.key_left = vk_left;
global.key_right = vk_right;
global.key_down = vk_down;
global.key_attack = vk_shift;
global.key_use = vk_space;

display_set_gui_size(global.view_width, global.view_height);

enum menu_page
{
	main,
	settings,
	audio,
	graphics,
	controls,
	height
}

enum menu_element_type
{
	script_runner,
	page_transfer,
	slider,
	shift,
	toggle,
	input
}

ds_menu_main = create_menu_page(	
	["Start", menu_element_type.script_runner, start_game],
	["Settings", menu_element_type.page_transfer, menu_page.settings],
	["Quit", menu_element_type.script_runner, exit_game]
);

ds_settings = create_menu_page(
	["Audio", menu_element_type.page_transfer, menu_page.audio],
	["Graphics", menu_element_type.page_transfer, menu_page.graphics] ,
	["Controls", menu_element_type.page_transfer, menu_page.controls],
	["Back", menu_element_type.page_transfer, menu_page.main]
);

ds_audio = create_menu_page(
	["Master", menu_element_type.slider,  change_volume,1,[0,1]],
	["Sounds", menu_element_type.slider, change_volume,1,[0,1]],
	["Music", menu_element_type.slider, change_volume,1,[0,1]],
	["Back", menu_element_type.page_transfer, menu_page.settings]
);

ds_graphics = create_menu_page(
	["Resolution", menu_element_type.shift, change_resolution, 0, ["364 x 216","768 x 432", "1152 x 648"]],
	["Window Mode", menu_element_type.toggle, change_window_mode,1,["Fullscreen","Windowed"]] ,
	["Back", menu_element_type.page_transfer, menu_page.settings]
);

ds_controls = create_menu_page(
	["Up", menu_element_type.input, "key_up", vk_up],
	["Left", menu_element_type.input, "key_left", vk_left] ,
	["Right", menu_element_type.input, "key_right", vk_right],
	["Down", menu_element_type.input, "key_down", vk_down],
	["Attack", menu_element_type.input, "key_attack", vk_shift],
	["Use", menu_element_type.input, "key_use", vk_space],
	["Back", menu_element_type.page_transfer, menu_page.settings]
);

page = 0;
inputting = false;

menu_pages = [ds_menu_main, ds_settings, ds_audio, ds_graphics, ds_controls];
var i;
for(i=0; i<array_length_1d(menu_pages); i++)
{
	menu_option[i] = 0;
}
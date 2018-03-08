/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 21599197
/// @DnDArgument : "code" "var i;$(13_10)for(i=0; i< array_length_1d(menu_pages); i++)$(13_10){$(13_10)	ds_grid_destroy(menu_pages[i]);$(13_10)}"
var i;
for(i=0; i< array_length_1d(menu_pages); i++)
{
	ds_grid_destroy(menu_pages[i]);
}
/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 0E4F3AAE
/// @DnDArgument : "code" " ///$(13_10) $(13_10) var i, j;$(13_10) $(13_10) var ds_grid_id = ds_grid_create(array_length_1d(argument[0]),argument_count);$(13_10) $(13_10) for(i = 0; i < argument_count; i++)$(13_10) {$(13_10)	  var menu_option = argument[i];$(13_10)	  for(j=0; j<array_length_1d(menu_option); j++)$(13_10)	  {$(13_10)		  ds_grid_id[#j,i] = menu_option[j];$(13_10)	  }$(13_10) }$(13_10) $(13_10) return ds_grid_id"
 ///
 
 var i, j;
 
 var ds_grid_id = ds_grid_create(array_length_1d(argument[0]),argument_count);
 
 for(i = 0; i < argument_count; i++)
 {
	  var menu_option = argument[i];
	  for(j=0; j<array_length_1d(menu_option); j++)
	  {
		  ds_grid_id[#j,i] = menu_option[j];
	  }
 }
 
 return ds_grid_id
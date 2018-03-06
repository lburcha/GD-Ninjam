/// @DnDAction : YoYo Games.Movement.Jump_To_Point
/// @DnDVersion : 1
/// @DnDHash : 2D11B09F
/// @DnDArgument : "x" "room_width/2"
/// @DnDArgument : "y" "room_height/2"
x = room_width/2;
y = room_height/2;

/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 40A87000
/// @DnDArgument : "code" "menu[0] = "Start Game";$(13_10)menu[1] = "Options"; $(13_10)menu[2] = "Quit";"
menu[0] = "Start Game";
menu[1] = "Options"; 
menu[2] = "Quit";
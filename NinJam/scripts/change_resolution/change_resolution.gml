/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 77B075C2
/// @DnDArgument : "code" "var msg = string(argument1[argument0]); //string to split$(13_10)show_debug_message(msg);$(13_10)var splitBy = " "; //string to split the first string by$(13_10)var slot = 0;$(13_10)var splits = ["","",""]; //array to hold all splits$(13_10)var str2 = ""; //var to hold the current split we're working on building$(13_10)$(13_10)var i;$(13_10)for (i = 1; i < (string_length(string(msg))+1); i++) $(13_10){$(13_10)    var currStr = string_copy(string(msg), i, 1);$(13_10)    if (currStr == splitBy) $(13_10)	{$(13_10)        splits[slot] = str2; //add this split to the array of all splits$(13_10)        slot++;$(13_10)        str2 = "";$(13_10)    } $(13_10)	else$(13_10)	{$(13_10)        str2 = str2 + currStr;$(13_10)        splits[slot] = str2;$(13_10)    }$(13_10)}$(13_10)$(13_10)var w = real(splits[0]);$(13_10)var h = real(splits[2]);$(13_10)$(13_10)window_set_size(w,h);"
var msg = string(argument1[argument0]); //string to split
show_debug_message(msg);
var splitBy = " "; //string to split the first string by
var slot = 0;
var splits = ["","",""]; //array to hold all splits
var str2 = ""; //var to hold the current split we're working on building

var i;
for (i = 1; i < (string_length(string(msg))+1); i++) 
{
    var currStr = string_copy(string(msg), i, 1);
    if (currStr == splitBy) 
	{
        splits[slot] = str2; //add this split to the array of all splits
        slot++;
        str2 = "";
    } 
	else
	{
        str2 = str2 + currStr;
        splits[slot] = str2;
    }
}

var w = real(splits[0]);
var h = real(splits[2]);

window_set_size(w,h);
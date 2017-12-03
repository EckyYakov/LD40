///fadeTransition(room to go to, restart)
var roomToGoTo = argument0; //Which room should we transition too
var restart = argument1;  //True or False, should we restart the room instead.

if(restart == true){
    if(!instance_exists(obj_Fade)){
        fadeObj = instance_create_depth(1, 1, -1000, obj_Fade);
        fadeObj.restart = restart;
    }
}
else{
    if(!instance_exists(obj_Fade)){
        fadeObj = instance_create_depth(1, 1, -1000, obj_Fade);
        fadeObj.roomToGoTo = roomToGoTo;
    }
}

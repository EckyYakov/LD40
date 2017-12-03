/// @description Insert description here
a = clamp(a + (fade * 0.05),0,1);

if (a == 1)
{
    if(restart){
        room_restart()
        fade = -1;
    }
    else{
        room_goto(roomToGoTo);
		//show_message("Faded");
        fade = -1;
    }
}
/// @description Insert description here
//Play Intro Sound
if(epicIntro == noone){
    epicIntro = audio_play_sound(snd_EpicIntro, 50, false);
    audio_sound_gain(epicIntro, 1, 1000);
}
position = audio_sound_get_track_position(epicIntro);

//If the user wishes to skip the intro they can
var skip = keyboard_check_pressed(vk_space);
var mouseSkip = mouse_check_button_pressed(mb_left);

//Make the image fade in.
if (alpha < 1){
    alpha += fadeSpeed;
}
else{
    timer++;
	if(timer > 51 and count < 2){
		subImage += .40;
		if(subImage > sprite_get_number(bg_KnightmareGames) -1){
			count++;
			subImage = 0;	
		}
	}
    if(count == 2) {
		alarm[0] = 40;
		count = 3;
	} 
}

//Go to the tutorial if the tutorial has not been completed, else go to main menu.
if(skip) proceed = true; 
if(mouseSkip) proceed = true; 

if(proceed){
   audio_stop_sound(epicIntro);
   room_goto_next();
}
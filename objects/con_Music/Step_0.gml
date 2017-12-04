/// @description Control which song to play.


//Play Song function
if(play_song){
	//**Starts given song.**//
	//Stop current song that is playing if a song is playing.
	if(current_song != noone){
		stop_song = true;
		next_song = current_song;
		song_to_stop = next_song;
	}

	//Gather song information
	var song = audio_play_sound(song_to_play, 1, false);
	//Set Options for the track
	audio_sound_gain(song, 0, 0);
	audio_sound_gain(song, 1, 2000);
	song_volume = 1;
	current_song = song;
	play_song = false;
}


//Pause Song Function
if(pause_song){
	//**Pauses current song.**//
	var pause_position = audio_sound_get_track_position(current_song);
	audio_pause_sound(current_song);
	pause_song = false;
}

//Resume Song Function
if(resume_song){
	//**Resumes current song.**//
	audio_resume_sound(current_song);
	resume_song = false;
}

//Stop Song Function
if(stop_song){
	//**Stops given song.**//
	//Fade the current song 
	audio_sound_gain(next_song, 0, 2000);
	var gain = audio_sound_get_gain(next_song);
	if(gain <= 0.01){
		audio_stop_sound(next_song)
		stop_song = false;
	}
}

//Stop all sound function
if(stop_all_sound){
	//**Stops all sound.**//
	audio_stop_all();
	stop_all_sound = false;
}

//Automatic Song Looper
//if(room == rm_Menu){
	if(current_song != noone){
		var position = audio_sound_get_track_position(current_song);
		var length = audio_sound_length(current_song);
		//show_debug_message("Position: " + string(position) + " End of song: " + string(length));
		//Pick a new track and fade 2 second before the song ends.
		if(position >= length- 2){
			play_song = true;
			switch room {
				case rm_Main_Menu:
					song_to_play = msc_tfx_main;
				break;
				case rm_Game:
					song_to_play = msc_tfx_main;
				break;
			}
		}
	}
//}
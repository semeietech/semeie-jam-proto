if(currentHp <= 0)
{
	audio_sound_pitch(sound0, random_range(0.8 , 1.2));

	audio_play_sound(sound0, 0, 0);

	game_restart();
}

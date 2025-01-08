return {
	type = "function",
	description = [[Plays a sound file, with an optional alteration and subtitle. Triggers `addTempSound` event.

**Note**: MP3 voice files must conform to the MPEG Layer-3, 64 Kbps 44100 kHz, 16-bit mono specification.]],
	arguments = {{
		name = "params",
		type = "table",
		tableParams = {
			{ name = "reference", type = "tes3reference|tes3mobileActor|string", description = "The reference to make say something.", },
			{ name = "soundPath", type = "string", description = "A path to a valid sound file. Starts in Data Files\\Sound\\.", },
			{ name = "pitch", type = "number", optional = true, default = "1.0", description = "A pitch shift to adjust the sound with.", },
			{ name = "volume", type = "number", optional = true, default = "1.0", description = "The volume to play the sound at, relative to the voice mix channel.", },
			{ name = "forceSubtitle", type = "boolean", optional = true, default = false, description = "If true a subtitle will be shown, even if subtitles are disabled.", },
			{ name = "subtitle", type = "string", optional = true, description = "The subtitle to show if subtitles are enabled, or if forceSubtitle is set.", },
		},
	}},
}
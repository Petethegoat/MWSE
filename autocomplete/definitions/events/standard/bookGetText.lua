return {
	type = "event",
	description = "This event is raised when a book's text is about to be displayed. By providing your own text, you can overwrite what is going to be displayed.",
	eventData = {
		["book"] = {
			type = "tes3book",
			readOnly = true,
			description = "The book whose text is being retrieved.",
		},
		["text"] = {
			type = "string",
			description = "If set, the book's text will be overwritten with this value. It needs to follow book text conventions as in the Construction Set. In essence, it uses HTML syntax. Important: every book needs to end with a `<BR>` statement to be displayed properly. For more details, please read the page on [book conventions](https://mwse.github.io/MWSE/references/general/books/).",
		},
		["loadOriginalText"] = {
			type = "fun(self: bookGetTextEventData): string",
			description = "Loads the original text for the book from the game files, bypassing this event.",
		},
	},
	filter = "book",
	examples = {
		["changeText"] = {
			title = "Change the text of a book",
			description = "This will make every book read Sweetroll."
		},
	},
}

return {
	type = "function",
	description = [[Returns a pattern that matches any single character that appears in the given string.
	
As an example, the pattern lpeg.S("+-*/") matches any arithmetic operator.

Note that, if s is a character (that is, a string of length 1), then lpeg.P(s) is equivalent to 
lpeg.S(s) which is equivalent to lpeg.R(s..s). Note also that both lpeg.S("") and lpeg.R() are 
patterns that always fail.]],
	link = "http://www.inf.puc-rio.br/~roberto/lpeg/#op-s",
	arguments = {
		{ name = "s", type = "string", description = "The input string." },
	},
	valuetype = "pattern",
}
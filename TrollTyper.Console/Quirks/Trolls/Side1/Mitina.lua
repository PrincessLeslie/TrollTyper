chatHandle = "huntressAnimal"
name = "Mitina"

chatColor = Color.Burgundy

replacements = 
{
	  TT.CreateReplacement("W", "oWo", true),
	  TT.CreateReplacement("l", "w"),
	  TT.CreateReplacement("L", "W"),
	  TT.CreateReplacement("r", "w"),
	  TT.CreateReplacement("R", "W"),
	  TT.CreateReplacement("n", "ny"),
	  TT.CreateReplacement("N", "Ny"),
	  TT.CreateReplacement("you", "U", true)
}

function PostQuirk(text)
	words = TT.SplitWords(text);
	sentenceLenght = TT.GetArrayLenght(words) 
	
	text = ""
	
	for i = 1, sentenceLenght, 1 do
	    word = words[i]
		char = string.sub(word, 1, 1)

		if char ~= "w" and TT.IsVowel(string.sub(word, 2, 2)) then
			text = text .. " " .. char .. "w" .. string.sub(word, 2, string.len(word))
		else
			text = text .. " " .. word
		end
	end

	return text
end

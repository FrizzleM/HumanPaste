delay 5

tell application "System Events"
	set textToType to the clipboard
	set textLines to paragraphs of textToType
	
	repeat with lineText in textLines
		repeat with char in characters of lineText
			keystroke char
			delay 0.2
			
			if (random number from 1 to 80) is 2 then
				delay 5
			end if
		end repeat
		
		key code 36
	end repeat
end tell

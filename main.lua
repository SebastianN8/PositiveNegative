-----------------------------------------------------------------------------------------
--
-- main.lua
--
-- Created by: Sebastian N
-- Created on: March 19
--
-- This program determines if a number is positive or negative
-----------------------------------------------------------------------------------------

-- Display
display.setDefault('background', 0, 0.5, 0)
local myTittle = display.newText('Is your intteger positive or negative?\nInput you integer:', display.contentCenterX, 150, native.SystemFont, 100)

-- TextField
local answerTextField = native.newTextField(display.contentCenterX, 420, 300, 150)
answerTextField.id = 'The integer place'

-- Button
local myButton = display.newImageRect('./Assets/Sprites/enterButton.png', 250, 150)
myButton.x = display.contentCenterX + 350
myButton.y = 420
myButton.id = 'Initiation'

local theResponse = display.newText('', display.contentCenterX, 900, native.SystemFont, 100)

-- Function
local function positiveNegative(event)
	-- Variable
	local theInteger = tonumber(answerTextField.text)
	-- If statement
	if theInteger > 0 then
		theResponse.text = ('The integer is positive!')
	elseif theInteger < 0 then
		theResponse.text = ('The integer is negative!')
	elseif theInteger == 0 then 
		theResponse.text = ('The integer is zero!')
	else 
		theResponse.text = ('This is not an integer!')
	end
end

myButton: addEventListener('touch', positiveNegative)
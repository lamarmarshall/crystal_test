# TODO: Write documentation for `ConsoleTest`
require "lime"

width = Window.width - 1

y = 1
x = 1
rect = Rectangle.new(
	x,y,width,5,Double,:green
)


rect.draw
text1 = "i got it"
text_x = width / 2 - text1.size 
Lime.print text1, text_x.to_i , 2 


Lime.draw



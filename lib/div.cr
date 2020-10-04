class Div
	def initialize(*, @inner_html : String = "&nbsp;",
		 @id : String =" ", @classes : String = "")
	end

	def inner_html
	"<div id=\"#{@id}\" class=\"#{@classes}\" > #{@inner_html} </div>"
	end

	def inner_html=(v : String)
		@inner_html = v
	end
		 
end


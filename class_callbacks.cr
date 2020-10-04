class Launch

	def initialize
		@callbacks = [] of ->
	end

	def after_launch(&block)
		@callbacks << block
	end

	def launch
		p "get ready for lift off"
		@callbacks.each &.call
	end
	
end

launch = Launch.new()
launch.after_launch{ p "let there be light"}
launch.after_launch{ p "is thera any beer"}
launch.launch

# TODO: Write documentation for `Testserve`
module Testserve
  VERSION = "0.1.0"

  # TODO: Put your code here
end

require "kemal"

get "/" do
	"hello world"
end

get "/:name" do |env|
	name = env.params.url["name"]
	render "src/views/hello.ecr", "src/views/layout.ecr"
end

Kemal.run

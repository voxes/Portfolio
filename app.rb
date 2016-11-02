require "rubygems"
require "bundler"

Bundler.require

module Server
	class App < Sinatra::Application
		configure do
			disable :method_override
		end

		use Rack::Deflater

		get '/' do 
			haml :index
		end

	end			
end
require "pry"
require "sinatra/base"
require "sinatra/reloader"

module App
	class Server < Sinatra::Base

		configure :development do
			register Sinatra::Reloader
		end

		get ('/') do
			send_file './public/index.html'
		end
	end
end
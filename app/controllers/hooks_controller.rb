class HooksController < ApplicationController
	require 'json'

	def analytics
		data_json = JSON.parse request.body.read

		puts data_json
	end
end

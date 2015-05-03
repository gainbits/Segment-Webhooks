class HooksController < ApplicationController
	require 'json'

	def index
		data_json = JSON::parse(request.body.read).with_indifferent_access

		puts data_json
	end
end

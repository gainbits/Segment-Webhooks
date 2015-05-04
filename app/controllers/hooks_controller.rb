class HooksController < ApplicationController
  require 'json'

  protect_from_forgery :except => :analytics_callback

  
  def analytics_callback
    data_json = JSON.parse(request.body.read)

    if data_json['type'] == "page"

      webhook = Hook.new

      webhook.anon_id    =  data_json['anonymousId']
      webhook.event_type       =  data_json['type']
      webhook.path       =  data_json['context']['page']['path']
      webhook.timestamp  =  data_json['timestamp']
      webhook.referrer   =  data_json['referrer']

      webhook.save

    else

    end

    render :nothing => true

  end
end

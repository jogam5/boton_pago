class WebhooksController < ApplicationController
  require 'json'

  def receptor
  	data_json = JSON.parse request.body.read
    render json: data_json
  end
end

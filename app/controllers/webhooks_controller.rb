class WebhooksController < ApplicationController
  require 'json'

  def receiver
  	data_json = JSON.parse request.body.read
    render json: data_json
  end
end
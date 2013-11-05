class WebhooksController < ApplicationController
  skip_before_action :verify_authenticity_token, only: [:receiver]
  require 'json'

  def receiver
  	data_json = JSON.parse request.body.read
    render json: data_json
  end
end
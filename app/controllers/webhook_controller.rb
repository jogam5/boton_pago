class WebhookController < ApplicationController
  require 'json'

  Stripe.api_key = "sk_test_5nNe60zFu4E02yU6K8yGAV9K"

   def receptor
    data_json = JSON.parse request.body.read

    #if data_json[:type] == "charge.pending"
    #  puts('webhook:' +data_json['data']['object']['amount'].to_s)
    #  @amount = data_json['data']['object']['amount'].to_s
    #end
	render json: data_json
  end

  def stripe
  	data_json = JSON.parse request.body.read
    p data_json['data']['object']['customer']

    if data_json[:type] == "charge.succeeded"
      @amount = data_json['data']['object']['customer']
    end
    render json: data_json
  end

 
end
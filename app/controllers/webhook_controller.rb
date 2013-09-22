class WebhookController < ApplicationController
  require 'json'
  require "stripe"

  Stripe.api_key ="sk_test_5nNe60zFu4E02yU6K8yGAV9K"

  def receptor

  	data_json = JSON.parse request.body.read

    p data_json['data']['object']['customer']

    if data_json[:type] == "invoice.payment_succeeded"
      make_active(data_event)
    end

  	#if Rails.env == "production"
	  	#data_json = JSON.parse request.body.read

	    #if data_json[:type] == "invoice.payment_succeeded"
	      #p data_json['data']['object']['customer']	
	      #@user = User.find_by_id(data_json['data']['object']['customer'].to_i)
	      #puts('webhook:' +data_json['data']['object']['customer'])
	      @amount = data_json['data']['object']['customer']
	    #end
	#else
		#@amount = "Testing"
	#end
  end
end
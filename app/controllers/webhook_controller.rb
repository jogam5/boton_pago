class WebhookController < ApplicationController
  def receptor
  	if Rails.env == "production"
	  	data_json = JSON.parse request.body.read 

	    if data_json[:type] == "charge.pending"
	      #@user = User.find_by_id(data_json['data']['object']['customer'].to_i)
	      puts('webhook:' +data_json['data']['object']['amount'].to_s)
	      @amount = data_json['data']['object']['amount'].to_s
	    end
	else
		@amount = "Testing"
	end
  end
end
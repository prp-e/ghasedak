require 'httparty'

class GhasedakApi 
    def initialize(api_key=ENV['ghasedak_key'], linenumber="10008566")
        @api_key = api_key 
        @linenumber = linenumber
    end 

    # Sending simple SMS 
    def send_simple_sms(receptor, message)
        request = HTTParty.post(
            'http://api.ghasedak.io/v2/sms/send/simple', 
            headers: {"apikey" => @api_key, "cache-control" => "no-cache", "content-type" => "application/x-www-form-urlencoded"},
            body: {"receptor" => receptor, "message" => message, "linenumber" => @linenumber}
        )

        return request.code # For receptor's safety, just returns status code. 
    end 

    # Sending pair SMS 
    def send_pair_sms(receptors, message)
        request = HTTParty.post(
            'http://api.ghasedak.io/v2/sms/send/pair', 
            headers: {"apikey" => @api_key, "cache-control" => "no-cache", "content-type" => "application/x-www-form-urlencoded"},
            body: {"receptor" => receptors, "message" => message, "linenumber" => @linenumber}
        )

        return request.code 
    end 
end
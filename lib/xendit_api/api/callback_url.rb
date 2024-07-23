require 'xendit_api/api/base'
require 'xendit_api/model/report'

module XenditApi
  module Api
    class CallbackUrl < XenditApi::Api::Base
      PATH = '/callback_urls'.freeze

      def create(type: ,params, headers = {})
        response = client.post("#{PATH}/#{type}", params, headers)
        XenditApi::Model::CallbackUrl.new(response)
      end
    end
  end
end

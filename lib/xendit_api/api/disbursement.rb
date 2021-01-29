require 'xendit_api/api/base'
require 'xendit_api/model/disbursement'

module XenditApi
  module Api
    class Disbursement < XenditApi::Api::Base
      PATH = '/disbursements'.freeze

      def create(params)
        response = client.post(PATH, params)
        XenditApi::Model::Disbursement.new(response.merge(payload: response.to_json))
      end
    end
  end
end
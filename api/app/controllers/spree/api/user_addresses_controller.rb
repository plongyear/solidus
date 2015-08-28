module Spree
  module Api
    class UserAddressesController < Spree::Api::BaseController
      def mine
        if current_api_user
          @user_addresses = current_api_user.user_addresses
        else
          render "spree/api/errors/unauthorized", status: :unauthorized
        end
      end
    end
  end
end

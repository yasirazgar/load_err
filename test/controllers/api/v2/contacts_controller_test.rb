require "minitest/autorun"
require 'test_helper'

module Api
  module V2
    class ContactsControllerTest < ActionController::TestCase
      # include Rack::Test::Methods

      def test_returns_success
        @controller = Api::V2::ContactsController.new
        get :index, params: { filter: {emails: {match: @domain} }} #?filter[emails][match]=domain.name
        assert_response :success
      end
    end
  end
end
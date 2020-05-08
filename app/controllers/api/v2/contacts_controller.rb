module Api
  module V2
    class ContactsController < BaseController
      include Rails.application.routes.url_helpers
      def index
        render plain: "Home"
      end
    end
  end
end
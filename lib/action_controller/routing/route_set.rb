module ActionController
  module Routing
    class RouteSet
      def add_routes
        yield Mapper.new(self)
        install_helpers([ActionController::Base, ActionView::Base], true)
      end
    end
  end
end
module Workarea
  module FilterDropdowns
    class Engine < ::Rails::Engine
      include Workarea::Plugin
      isolate_namespace Workarea::FilterDropdowns

      initializer 'workarea.filter_dropdowns' do
        Plugin.append_javascripts(
            'storefront.config',
            'workarea/storefront/filter_dropdowns/config'
        )
      end

      config.to_prepare do
        Storefront::ApplicationController.helper(Storefront::FilterDropdownsHelper)
      end
    end
  end
end

module Workarea
  module Storefront
    module FilterDropdownsHelper
      def contains_selected_filter?(name)
        return true if name == :theme
        params.keys.grep(/#{name}/i).any?
      end
    end
  end
end

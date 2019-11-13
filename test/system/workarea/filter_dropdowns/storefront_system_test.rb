require 'test_helper'

module Workarea
  module FilterDropdowns
    class StorefrontSystemTest < Workarea::SystemTest
      def test_drawer_installed_and_passes_ci
        # This test allows bamboo to run and can be removed if another
        # test is written for this plugin in the future.
        assert true
      end
    end
  end
end

Workarea Filter Dropdowns
================================================================================

Filter Dropdowns plugin for the Workarea Commerce platform.

Getting Started
--------------------------------------------------------------------------------

This gem contains a rails engine that must be mounted onto a host Rails application.

You must have access to a WebLinc gems server to use this gem. Add your gems server credentials to Bundler:

    bundle config gems.weblinc.com my_username:my_password

Or set the appropriate environment variable in a shell startup file:

    export BUNDLE_GEMS__WEBLINC__COM='my_username:my_password'

Then add the gem to your application's Gemfile specifying the source:

    # ...
    gem 'workarea-filter_dropdowns', source: 'https://gems.weblinc.com'
    # ...

Or use a source block:

    # ...
    source 'https://gems.weblinc.com' do
      gem 'workarea-filter_dropdowns'
    end
    # ...

Update your application's bundle.

    cd path/to/application
    bundle

Using Workarea Filter Dropdowns
--------------------------------------------------------------------------------

This gem packages up the [workarea-accordions](https://stash.tools.workarea.com/projects/WP/repos/workarea-accordions/browse) gem and includes a JS config preset to utilize jQuery UI's accordion functionality to the browse filters into dropdown menus. Other elements may be converted into dropdowns by applying the same accordion preset data attribute value, but they will have to match the relavent markup from the browse filters. Or the config will need to be customized. See [https://jqueryui.com/accordion/](https://jqueryui.com/accordion/) for jQuery UI Accordion documentation.

Simply add a data attribute to `.result-filters` element like this:

`.result-filters{ data: { accordion: { presetConfig: 'filtersAccordionOptions' }.to_json } }`

Along with the `filtersAccordionOptions` preset configuration, there is a `filtersAccordionOptionsActive` config that will default the dropdown to open. This version of the gem also includes a helper method, `contains_selected_filter?` to help you conditionally apply the appropriate preset configuration based on the presence of any selected filters.

`.result-filters{ data: { accordion: { presetConfig: contains_selected_filter?(name) ? 'filtersAccordionOptionsActive' : 'filtersAccordionOptions' }.to_json } }`

Workarea Platform Documentation
--------------------------------------------------------------------------------

See [http://developer.weblinc.com](http://developer.weblinc.com) for Workarea platform documentation.

Copyright & Licensing
--------------------------------------------------------------------------------

Copyright WebLinc 2015. All rights reserved.

For licensing, contact sales@workarea.com.

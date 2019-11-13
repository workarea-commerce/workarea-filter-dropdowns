Workarea Filter Dropdowns
================================================================================

Filter Dropdowns plugin for the Workarea Commerce platform.

Using Workarea Filter Dropdowns
--------------------------------------------------------------------------------

This gem packages up the [workarea-accordions](https://stash.tools.workarea.com/projects/WP/repos/workarea-accordions/browse) gem and includes a JS config preset to utilize jQuery UI's accordion functionality to the browse filters into dropdown menus. Other elements may be converted into dropdowns by applying the same accordion preset data attribute value, but they will have to match the relavent markup from the browse filters. Or the config will need to be customized. See [https://jqueryui.com/accordion/](https://jqueryui.com/accordion/) for jQuery UI Accordion documentation.

Simply add a data attribute to `.result-filters` element like this:

`.result-filters{ data: { accordion: { presetConfig: 'filtersAccordionOptions' }.to_json } }`

Along with the `filtersAccordionOptions` preset configuration, there is a `filtersAccordionOptionsActive` config that will default the dropdown to open. This version of the gem also includes a helper method, `contains_selected_filter?` to help you conditionally apply the appropriate preset configuration based on the presence of any selected filters.

`.result-filters{ data: { accordion: { presetConfig: contains_selected_filter?(name) ? 'filtersAccordionOptionsActive' : 'filtersAccordionOptions' }.to_json } }`

Workarea Platform Documentation
--------------------------------------------------------------------------------

See [https://developer.workarea.com](https://developer.workarea.com) for Workarea platform documentation.

Copyright & Licensing
--------------------------------------------------------------------------------
Workarea Commerce Platform is released under the [Business Software License](https://github.com/workarea-commerce/workarea/blob/master/LICENSE)

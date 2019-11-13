(function () {
    'use strict';

    /**
     * Config Variables
     */

    WORKAREA.config.filtersAccordionOptions = {
        uiAccordionOptions: {
            heightStyle: 'content',
            active: false,
            collapsible: true,
            header: 'h2'
        }
    };

    WORKAREA.config.filtersAccordionOptionsActive = _.merge(
        {},
        WORKAREA.config.filtersAccordionOptions,
        {
            uiAccordionOptions: {
                active: 0
            }
        }
    );

})();

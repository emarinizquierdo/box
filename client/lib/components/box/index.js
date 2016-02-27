(function(riot) {
    'use strict'

    require('./box.tag');
    require('../color/color.tag');
    require('../colorPicker/colorPicker.tag');

    /* Feature Library Object */
    function Box( parentWrapper ) {

        /* Public Variables */
        this.parentWrapper = parentWrapper;

        /* Revealing Methods */
        this.init = init.bind(this);

    }

    /**
     * Initialise our application's code.
     */
    function init( color ) {
        var timestamp = new Date().getTime();
        var boxComponent = document.createElement('box')
        boxComponent.id = "box_" + timestamp;
        this.parentWrapper.appendChild(boxComponent);
        riot.mount("#" + boxComponent.id, {color : color});

    }

    module.exports = Box;

})(window.riot);

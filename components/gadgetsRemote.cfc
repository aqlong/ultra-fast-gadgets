// we could have enabled REST on this component and defined the restpath, etc., but it seemed like overkill for this project
component output="false" {

    // pseudo-constructor
    variables.objGadgets = new gadgets();

    // get all gadgets, either from cache or directly
    remote function getAll(boolean cachedVersion=true) 
        output="false" 
        returnformat="JSON" {

        var arrGadgetSourceData = [];

        if (arguments.cachedVersion) {
            arrGadgetSourceData = application.cache.gadgets;
        } else {
            arrGadgetSourceData = variables.objGadgets.getAll();       
        }

        var Gadgets = [];

        // just return the minimal data we need for the front-end, so the speed/latency is optimal
        for (var gadget in arrGadgetSourceData) {
            arrayAppend(Gadgets, gadget.gadgetName);
        }

        return Gadgets;

    }
    
}
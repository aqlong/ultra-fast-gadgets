component output="true" {
    this.name = "ultraFastGadgets_AQL";
    this.applicationTimeout = CreateTimeSpan(10, 0, 0, 0); //10 days
    this.datasource = "my_datasource";
    
    function onApplicationStart() {
        
        cflog(text="onApplicationStart hit");
        buildAppCache();

        return true;
    }

    function buildAppCache() {

        cflog(text="buildAppCache hit");
        // alternately, we could use onServerStart() and cache it in the Server scope for all applications to share
        application.cache = {};
        application.cache.lastRefresh = now();
        application.com.gadgets = new components.gadgets();
        application.cache.gadgets = application.com.gadgets.getAll();
        
    }
    
    function onSessionStart() {}
    
    // the target page is passed in for reference, 
    // but you are not required to include it
    function onRequestStart( string targetPage ) {

        // TODO: remove, temp testing
        //onApplicationStart();
        // refresh application if necessary 
        if ( dateDiff("n", now(), application.cache.lastRefresh) GT 1 ) {
            cflog(text="buildAppCache refreshed");
            buildAppCache();
        }
        return true;
    }
    
}
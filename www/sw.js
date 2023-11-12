jsproxy_config = x => { 
    __CONF__ = x; 
    importScripts(__FILE__ = x.assets_cdn + 'main.js') 
}; 
importScripts('conf.js');

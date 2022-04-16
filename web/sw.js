if ('serviceWorker' in navigator) {
    window.addEventListener('load', function () {
        navigator.serviceWorker.register('/sw.js', { scope: "/" }).then(function (registration) {
            // Registration was successful
            console.log('ServiceWorker registration successful with scope: ', registration.scope);
        }, function (err) {
            // registration failed :(
            console.log('ServiceWorker registration failed: ', err);
        });
    })
}
// The version of the cache. Every time you change any of the files you need to change this version (version_01, version_02…). If you don't change the version, the service worker will give your users the old files!
var CACHE_NAME = 'my-site-cache-v1';
// The files to make available for offline use. make sure to add others to this list
var urlsToCache = [
'/',
'index.html',    ];


var CACHE_NAME = "Project1";
var CACHED_URLS = [
  "Project1.html",
  "labels.css",
  "Project1.js",
  "Unit1.html",
  "UnitLabelName.html"
  ];

self.addEventListener('install', function(event) {
                event.waitUntil(
                                caches.open(CACHE_NAME).then(function(cache) {
                                return cache.addAll(CACHED_URLS);
                })
                                );
});


self.addEventListener('fetch',function(event) {
   event.respondWith(
     fetch(event.request).catch(function() {
                   return caches.match(event.request).then(function(response) {
       if (response) {
                                   return response;
       } else if (event.request.headers.get("accept").includes("text/html")) {
                                   return caches.match("Project1.html");
                   }
                   });
   })
                   );
});
var cacheName = 'quran-v1.7';
var staticContentToCache = [
	'/',
	'/index.html',
	'/favicon.ico',
	'/css/quran.css',
	'/css/fonts/hamdullah.ttf',
	'/css/fonts/lateef.ttf',
	'/css/fonts/rb_quran.ttf',
	'/css/fonts/saleem.ttf',
	'/css/fonts/seherezade.ttf',
	'/css/icons/quran_32x32.png',
	'/css/icons/quran_48x48.png',
	'/css/icons/quran_64x64.png',
	'/css/icons/quran_72x72.png',
	'/css/icons/quran_96x96.png',
	'/css/icons/quran_128x128.png',
	'/css/icons/quran_144x144.png',
	'/css/icons/quran_152x152.png',
	'/css/icons/quran_192x192.png',
	'/css/icons/quran_384x384.png',
	'/css/icons/quran_512x512.png',
	'/css/icons/quran_loading.gif',
	'/app.js',
	'/js/swipe.js',
	'/js/lang.js',
	'/js/settings.js',
	'/js/quran.js',
];

// Installing Service Worker
self.addEventListener('install', evt => {
	console.log('Service worker installed.');
	evt.waitUntil(
		caches.open(cacheName).then(cache => {
			staticContentToCache.forEach(function(file){cache.add(file).catch((err)=>{console.error(err)})});
		})
	);
});

// Fetching content using Service Worker
self.addEventListener('fetch', evt => {
	evt.respondWith(
		caches.match(evt.request).then(
			cacheResponse => {
				return fetch(evt.request) || cacheResponse;
		}));
});

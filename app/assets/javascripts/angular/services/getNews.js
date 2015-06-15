rotaryApp.factory('getNews', function($resource){
    return $resource('/news_items.json', {},{
        update: {
            method: "PUT"
        },
        query: {
            method: 'GET'
        }
    });
});

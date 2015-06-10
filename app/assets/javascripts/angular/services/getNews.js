rotaryApp.factory('getNews', function($resource){
    return $resource('/news.json', {},{
        update: {
            method: "PUT"
        },
        query: {
            method: 'GET'
        }
    });
});

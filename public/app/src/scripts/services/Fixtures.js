(function() {
    function Fixtures() {
        var Fixtures = {};

        var tasks = [
            { title: 'Walk the dog' },
						{ title: 'Run 4 miles' },
						{ title: 'Work on Bloc' }
        ];

        Fixtures.getTasks = function(){
          return tasks;
        };

        return Fixtures;
    }

    angular
        .module('blocitoff')
        .factory('Fixtures', Fixtures);
})();

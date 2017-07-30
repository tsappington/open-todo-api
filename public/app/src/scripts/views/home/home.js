(function() {
    function HomeCtrl(Fixtures) {
			this.tasks = Fixtures.getTasks();
    }

    angular
        .module('blocitoff')
        .controller('HomeCtrl', ['Fixtures', HomeCtrl]);
})();

(function() {
    var loginForm = {
      bindings: {},
      templateUrl: 'app/src/scripts/components/login-form/login-form.html',
      controller: loginFormCtrl
    }

    function loginFormCtrl($auth) {
      var $ctrl = this;

      $ctrl.submitLogin = function() {
        $auth.submitLogin($ctrl.loginForm)
          .then(function(resp) {
            console.log(resp)
          })
          .catch(function(resp) {
            // handle error response
          });
      };
    }

    angular
        .module('blocitoff')
        .component('loginForm', loginForm);
})();

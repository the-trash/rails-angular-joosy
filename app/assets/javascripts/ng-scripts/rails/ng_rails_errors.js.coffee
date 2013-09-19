@RailsErrors = ($scope, $rootScope, $element) ->
  $scope.errors  = []
  $scope.visible = false
  $scope.close   = -> $($element).slideUp()

  $rootScope.$on 'RailsErrorsAdd', (e, errors) ->
    $scope.errors = errors
    $($element).slideDown()
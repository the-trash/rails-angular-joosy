@RailsNotices = ($scope, $rootScope, $element) ->
  $scope.visible = false
  $scope.close   = -> $($element).slideUp()

  $rootScope.$on 'RailsNoticesAdd', (e, notice) ->
    $scope.visible = true
    $scope.notice  = notice
    $($element).slideDown()
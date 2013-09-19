@PostForm = ($scope, $element, $rootScope, $http) ->
  RailsErrorsMixin($scope, $element)

  $scope.post = {}

  $scope.submit = (event) ->
    $http
      method: 'POST'
      url:    'create.ng'
      data:   { post: $scope.post }
    .success (data, status, headers, config) ->
      post   = data.post
      errors = data.errors
      notice = data.notice

      if errors
        $scope.rails_errors.errors = errors
      else
        $scope.post = {}
        $scope.rails_errors.close()

        $rootScope.$emit 'PostAdd', post
        $rootScope.$emit 'RailsNoticesAdd', notice

    .error (data, status) ->
      log 'Error', data, status

    event.preventDefault()
    false
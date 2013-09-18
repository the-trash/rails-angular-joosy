@PostForm = ($scope, $rootScope, $http) ->
  $scope.submit = (event) ->
    params =
      post:
        email:       $scope.email
        name:        $scope.name
        raw_content: $scope.raw_content
    
    $http
      method: 'POST'
      url:    'create.ng'
      data:   params
    .success (data, status, headers, config) ->
      post   = data.post
      errors = data.errors
      notice = data.notice

      if errors
        $rootScope.$emit 'RailsErrorsAdd', errors
      else
        $rootScope.$emit 'PostAdd', post
        $rootScope.$emit 'RailsNoticesAdd', notice

    .error (data, status) ->
      log 'Error'
      log data, status

    event.preventDefault()
    false
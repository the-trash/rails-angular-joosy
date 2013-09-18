@PostForm = ($scope, $http) ->
  $scope.submit = (event) ->
    params =
      post:
        email:       $scope.email
        name:        $scope.name
        raw_content: $scope.raw_content

    log params
    
    $http
      method: 'POST'
      url:    'create.ng'
      data:   params
    .success (data, status, headers, config) ->
      log data
      # $scope.posts = data
      # set_posts_count()
      # set_posts_empty()
    .error (data, status) ->
      log 'Error'
      log data, status

    event.preventDefault()
    false
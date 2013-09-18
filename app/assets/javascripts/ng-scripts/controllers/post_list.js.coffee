@PostList = ($scope, $http) ->
  $scope.posts       = []
  $scope.posts_count = 0
  $scope.posts_empty = true

  set_posts_empty = ->
    $scope.posts_empty = $scope.posts.length is 0

  set_posts_count = ->
    $scope.posts_count = $scope.posts.length

  $http
    method: 'GET'
    url:    'list.ng'
  .success (data, status, headers, config) ->
    $scope.posts = data
    set_posts_count()
    set_posts_empty()
  .error (data, status) ->
    log 'Error'
    log data, status
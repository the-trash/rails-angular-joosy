#= require_directory ./rails

#= require_self
#  require_directory ./services
#  require_directory ./directives
#  require_directory ./resources
#= require_directory ./controllers
#  require_directory ./routes

configureHttp = (httpp) ->
  commonHeaders = httpp.defaults.headers.common
  commonHeaders['Accept']       = 'application/json'
  commonHeaders['X-CSRF-TOKEN'] = $('meta[name="csrf-token"]').attr('content')

@app = angular.module 'PublicBoard', []

@app.config [
  '$httpProvider',
  ($httpProvider, httpConfig) -> configureHttp($httpProvider)
]
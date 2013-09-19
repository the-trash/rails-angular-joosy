@RailsErrorsMixin = (scope, element) ->
  scope.rails_errors = {
    errors_holder: $(element).find('.error_explanation')
    close: -> @errors_holder.slideUp()
  }

  scope.$watch 'rails_errors.errors', ->
    errs = scope.rails_errors
    errs.errors_holder.slideDown()
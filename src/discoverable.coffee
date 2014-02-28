isBrowser = window?

sa = if isBrowser then window.superagent else require('superagent')
Q = require('q')

  #
  # Discoverable
  #
module.exports = class Discoverable

  url: ''
  resource: {}

  get: () ->
    deferred = Q.defer()

    sa.get(@url, (res) ->
      deferred.resolve(res.body)
    )

    return deferred.promise

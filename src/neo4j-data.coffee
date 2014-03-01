
Discoverable = require('./discoverable')
Q = require('q')
_ = require('lodash')

  #
  # Neo4jData
  #
module.exports = class Neo4jData extends Discoverable


  #
  # Constructs a new Neo4jData
  #
  #
  # @param {promise} promised Neo4jUrl resource
  constructor: (promisedNeo4j) ->
    deferred_this = Q.defer()
    @promise = deferred_this.promise

    promisedNeo4j
      .then((neo4j) =>
        @url = neo4j.data
        @get()
          .then((data) =>
            _.assign(this, data)
            deferred_this.resolve(this)
          )
      )

  ready: () ->
    return @promise


Discoverable = require('./discoverable')
Q = require('q')
_ = require('lodash')

  #
  # Neo4jManagement
  #
module.exports = class Neo4jManagement extends Discoverable


  #
  # Constructs a new Neo4jManagement
  #
  #
  # @param {promise} promised Neo4jUrl resource
  constructor: (promisedNeo4j) ->
    deferred_this = Q.defer()
    @promise = deferred_this.promise

    promisedNeo4j
      .then((neo4j) =>
        @url = neo4j.management
        @get()
          .then((management) =>
            _.assign(this, management)
            deferred_this.resolve(this)
          )
      )

  ready: () ->
    return @promise

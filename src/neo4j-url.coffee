
Q = require('q')
Discoverable = require('./discoverable')
Neo4jData = require('./neo4j-data')
Neo4jManagement = require('./neo4j-management')

  #
  # Neo4jUrl
  #
module.exports = class Neo4jUrl extends Discoverable

  # @property[String] Current version.
  @VERSION: '0.1.0'

  #
  # Constructs a new Neo4jUrl
  #
  #     var neo4j = new Neo4jUrl( "http://localhost:7474" )
  #
  # @param {String} base url for Neo4j
  constructor: (url = "http://localhost:7474") ->

    @url = url

    deferred_resource = Q.defer()

    @data = new Neo4jData(deferred_resource.promise)

    @management = new Neo4jManagement(deferred_resource.promise)

    @get()
      .then((neo4j) =>
        deferred_resource.resolve(neo4j)
      )

  toString: () ->
    return "Neo4jUrl " + " addressing " + @url

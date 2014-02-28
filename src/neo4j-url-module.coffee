# 'use strict'

# entry point for client (web-browser)

Neo4jUrl = require('./neo4j-url')

if typeof define is "function" and define.amd
  # AMD
  console.log("module view of Neo4jUrl:", Neo4jUrl)
  define (require, exports, module) ->
    Neo4jUrl
else if typeof exports is "object"
  # CommonJS
  exports = module.exports = () ->
    Neo4jUrl

if window?
  # Browser globals (neo4jApi is your global library identifier)
  window.Neo4jUrl = Neo4jUrl

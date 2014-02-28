'use strict';

Neo4jUrl = require('../build/neo4j-url');

describe 'Neo4jUrl has sensible defaults', () ->

  it 'should know the default URL for a localhost running Neo4j', () ->
    ic = new Neo4jUrl()
    ic.url.should.equal("http://localhost:7474")


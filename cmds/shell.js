'use strict';

var repl = require("repl");
var Neo4jUrl = require('../build/neo4j-url');


module.exports = function(program) {

	program
		.command('shell')
		.version('0.0.1')
		.description('Interactive shell')
		.action(function(/* Args here */){
      var local = repl.start('(neo4j-url) ');
      local.context.Neo4jUrl = Neo4jUrl;
		});

};

/* discover commander component
 * To use add require('../cmds/discover.js')(program) to your commander.js based node executable before program.parse
 */
'use strict';

var Neo4jUrl = require('../build/neo4j-url');
var JSON3 = require('json3');

module.exports = function(program) {

	program
		.command('discover')
		.version('0.1.0')
		.description('Discover and display Neo4j REST endpoints')
		.action(function(/* Args here */) {
      var neo4j = new Neo4jUrl();
      neo4j.ready().then(function(d) { console.log(JSON3.stringify(d, null, '\t')); });
		});

};

(function() {
  var Neo4jUrl, exports;

  Neo4jUrl = require('./neo4j-url');

  if (typeof define === "function" && define.amd) {
    console.log("module view of Neo4jUrl:", Neo4jUrl);
    define(function(require, exports, module) {
      return Neo4jUrl;
    });
  } else if (typeof exports === "object") {
    exports = module.exports = function() {
      return Neo4jUrl;
    };
  }

  if (typeof window !== "undefined" && window !== null) {
    window.Neo4jUrl = Neo4jUrl;
  }

}).call(this);

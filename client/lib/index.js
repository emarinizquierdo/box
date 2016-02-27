(function($window) {
  'use strict'

  $window.riot = require('riot');
  var Box= require('./components/box');

  $window.mylib = $window.mylib || {};
  $window.mylib.box = $window.mylib.Box =  Box;

})(window);

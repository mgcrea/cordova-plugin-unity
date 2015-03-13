'use strict';

var exec = require('cordova/exec');

function defaults(object, source) {
  if(!object) object = {};
  for(var prop in source) {
    if(typeof object[prop] === 'undefined') {
      object[prop] = source[prop];
    }
  }
  return object;
}

exports.show = function(options, success, error) {
  defaults(options, {
    x: 200,
    y: 200,
    width: 512,
    height: 384
  });
  var args = [options.x, options.y, options.width, options.height];
  exec(success, error, 'Unity', 'show', args);
};

exports.hide = function(arg0, success, error) {
  exec(success, error, 'Unity', 'hide', [arg0]);
};

exports.sendMessage = function(message, success, error) {
  exec(success, error, 'Unity', 'sendMessage', [message + '']);
};

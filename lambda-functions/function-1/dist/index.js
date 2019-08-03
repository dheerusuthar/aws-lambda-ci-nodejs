'use strict';

const axios = require('axios');

exports.handler = function (event, context, callback) {
  if ((event.name === 'AWS') || (event.name === 'Lambda')) {
    return callback(null, { valid: true });
  }

  callback(new Error('unknown name'));
};

/**
Add here the routes for the root of the application (i.e. error message (wrong url))
*/

var express = require('express');
var router = express.Router();


router
  .get('/', function(req, res) {

    /**
     * @api {get} / General information on URL
     * @apiName /
     * @apiGroup General
     *
     * @apiSuccess {String} message message informing about wich URL to call for API.
     */

    var hostname = req.headers.host;
    res.json({
      message: 'hooray! Benvenuto nelle nostre API. Usa ' + hostname + '/api/ per chiamare una qualsiasi API!'
    });
  })

module.exports = router;

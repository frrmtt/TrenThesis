define({ "api": [
  {
    "type": "get",
    "url": "/",
    "title": "General information on URL",
    "name": "_",
    "group": "General",
    "success": {
      "fields": {
        "Success 200": [
          {
            "group": "Success 200",
            "type": "String",
            "optional": false,
            "field": "message",
            "description": "<p>message informing about wich URL to call for API.</p>"
          }
        ]
      }
    },
    "version": "0.0.0",
    "filename": "./routes.js",
    "groupTitle": "General"
  },
  {
    "type": "get",
    "url": "/api/",
    "title": "Welcome message",
    "name": "_api_",
    "group": "General",
    "success": {
      "fields": {
        "Success 200": [
          {
            "group": "Success 200",
            "type": "String",
            "optional": false,
            "field": "message",
            "description": "<p>message informing the service is working.</p>"
          }
        ]
      }
    },
    "version": "0.0.0",
    "filename": "./api/routes.js",
    "groupTitle": "General"
  }
] });

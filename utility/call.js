var config = require('config');
var plivo = require('plivo');
var makeScript = function(messageBody) {
    // concatenate into a well-strutured single script
};

exports.callUser = function(req, res) {
    var script = makeScript(req.body);
    var params = {
        from: req.body.src,
        to: req.body.src,
        answer_url: "http://plivo-idonethis.herokuapp.com/xml-response?script=" + script
    };
    var p = plivo.RestAPI(config.plivo);
    p.make_call(params, function(status, response) {
        res.send(status, response);
    });
};

exports.readScript = function(req, res) {
    var r = new plivo.Response();
    var message = req.body.script || 'hello';
    var options = {
        loop: 2
    };
    r.addSpeak(message, options);
    res.send(200, r.toXML());
};

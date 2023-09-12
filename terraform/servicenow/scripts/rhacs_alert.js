(function process(/*RESTAPIRequest*/ request, /*RESTAPIResponse*/ response) {
    var data = JSON.parse(request.body.dataString);
    var deployment = data.alert.deployment;
    var policy_name = data.alert.policy.name;

    // Create example incident record
    var incident = new GlideRecord('incident');
    incident.initialize(); 
    incident.short_description = 'Automated incident created from Advanced Cluster Security';
    incident.description = "Deployment '" + deployment.name + "' in namespace '" + deployment.namespace + "' violated policy ''" + policy_name + "'"; 
    incident.insert();

    // Log data from policy violation
    gs.info("Deployment '" + deployment.name + "' in namespace '" + deployment.namespace + "' violated policy ''" + policy_name + "'");
    // Log complete object for debug
    gs.info(JSON.stringify(data));
})(request, response);
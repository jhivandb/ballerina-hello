import ballerina/http;

type OrgConfig record {
    string orgName;
    string orgId;
};

configurable map<OrgConfig> orgConfigs = ?;

service /hello on new http:Listener(8090) {
    resource function get greeting() returns string {
        return "Hello, orgConfigs";
    }
}

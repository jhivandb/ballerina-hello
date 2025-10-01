import ballerina/http;

type OrgConfig record {
    string orgName;
    string orgId;
    int inty;
    boolean booly;
    boolean | int boolinty;
};

configurable map<OrgConfig> orgConfigs = ?;

service /hello on new http:Listener(8090) {
    resource function get greeting() returns string {
        return "Hello, orgConfigs";
    }
}

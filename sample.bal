import ballerina/http;

type OrgConfig record {
    string orgName;
    string orgId;
    int inty;
    boolean booly;
    boolean | int boolinty;
};

configurable map<OrgConfig> orgConfigs = ?;

configurable OrgConfig orgconfigsingle = ?;

// Global optional configurations for testing
configurable string? testString = ();
configurable int? testInt = ();
configurable boolean? testBoolean = ();
configurable float? testFloat = ();
configurable decimal? testDecimal = ();
configurable string[]? testStringArray = ();
configurable int[]? testIntArray = ();
configurable map<string>? testStringMap = ();
configurable map<int>? testIntMap = ();

service /hello on new http:Listener(8090) {
    resource function get greeting() returns string {
        return "Hello, orgConfigs";
    }
}

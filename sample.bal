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
        string output = "=== Config Values ===\n\n";

        // Required configs
        output += "orgConfigs: " + orgConfigs.toString() + "\n\n";
        output += "orgconfigsingle: " + orgconfigsingle.toString() + "\n\n";

        // Optional configs
        output += "testString: " + testString.toString() + "\n";
        output += "testInt: " + testInt.toString() + "\n";
        output += "testBoolean: " + testBoolean.toString() + "\n";
        output += "testFloat: " + testFloat.toString() + "\n";
        output += "testDecimal: " + testDecimal.toString() + "\n";
        output += "testStringArray: " + testStringArray.toString() + "\n";
        output += "testIntArray: " + testIntArray.toString() + "\n";
        output += "testStringMap: " + testStringMap.toString() + "\n";
        output += "testIntMap: " + testIntMap.toString() + "\n";

        return output;
    }
}

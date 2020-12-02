# This file is auto-generated by AWSMetadata.jl
using AWS
using AWS.AWSServices: application_insights
using AWS.Compat
using AWS.UUIDs

"""
    CreateApplication()

Adds an application that is created from a resource group.

# Required Parameters
- `ResourceGroupName`: The name of the resource group.

# Optional Parameters
- `CWEMonitorEnabled`:  Indicates whether Application Insights can listen to CloudWatch events for the application resources, such as instance terminated, failed deployment, and others. 
- `OpsCenterEnabled`:  When set to true, creates opsItems for any problems detected on an application. 
- `OpsItemSNSTopicArn`:  The SNS topic provided to Application Insights that is associated to the created opsItem. Allows you to receive notifications for updates to the opsItem. 
- `Tags`: List of tags to add to the application. tag key (Key) and an associated tag value (Value). The maximum length of a tag key is 128 characters. The maximum length of a tag value is 256 characters.
"""
create_application(ResourceGroupName; aws_config::AWSConfig=global_aws_config()) = application_insights("CreateApplication", Dict{String, Any}("ResourceGroupName"=>ResourceGroupName); aws_config=aws_config)
create_application(ResourceGroupName, args::AbstractDict{String, <:Any}; aws_config::AWSConfig=global_aws_config()) = application_insights("CreateApplication", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("ResourceGroupName"=>ResourceGroupName), args)); aws_config=aws_config)

"""
    CreateComponent()

Creates a custom component by grouping similar standalone instances to monitor.

# Required Parameters
- `ComponentName`: The name of the component.
- `ResourceGroupName`: The name of the resource group.
- `ResourceList`: The list of resource ARNs that belong to the component.

"""
create_component(ComponentName, ResourceGroupName, ResourceList; aws_config::AWSConfig=global_aws_config()) = application_insights("CreateComponent", Dict{String, Any}("ComponentName"=>ComponentName, "ResourceGroupName"=>ResourceGroupName, "ResourceList"=>ResourceList); aws_config=aws_config)
create_component(ComponentName, ResourceGroupName, ResourceList, args::AbstractDict{String, <:Any}; aws_config::AWSConfig=global_aws_config()) = application_insights("CreateComponent", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("ComponentName"=>ComponentName, "ResourceGroupName"=>ResourceGroupName, "ResourceList"=>ResourceList), args)); aws_config=aws_config)

"""
    CreateLogPattern()

Adds an log pattern to a LogPatternSet.

# Required Parameters
- `Pattern`: The log pattern. The pattern must be DFA compatible. Patterns that utilize forward lookahead or backreference constructions are not supported.
- `PatternName`: The name of the log pattern.
- `PatternSetName`: The name of the log pattern set.
- `Rank`: Rank of the log pattern. Must be a value between 1 and 1,000,000. The patterns are sorted by rank, so we recommend that you set your highest priority patterns with the lowest rank. A pattern of rank 1 will be the first to get matched to a log line. A pattern of rank 1,000,000 will be last to get matched. When you configure custom log patterns from the console, a Low severity pattern translates to a 750,000 rank. A Medium severity pattern translates to a 500,000 rank. And a High severity pattern translates to a 250,000 rank. Rank values less than 1 or greater than 1,000,000 are reserved for AWS-provided patterns. 
- `ResourceGroupName`: The name of the resource group.

"""
create_log_pattern(Pattern, PatternName, PatternSetName, Rank, ResourceGroupName; aws_config::AWSConfig=global_aws_config()) = application_insights("CreateLogPattern", Dict{String, Any}("Pattern"=>Pattern, "PatternName"=>PatternName, "PatternSetName"=>PatternSetName, "Rank"=>Rank, "ResourceGroupName"=>ResourceGroupName); aws_config=aws_config)
create_log_pattern(Pattern, PatternName, PatternSetName, Rank, ResourceGroupName, args::AbstractDict{String, <:Any}; aws_config::AWSConfig=global_aws_config()) = application_insights("CreateLogPattern", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("Pattern"=>Pattern, "PatternName"=>PatternName, "PatternSetName"=>PatternSetName, "Rank"=>Rank, "ResourceGroupName"=>ResourceGroupName), args)); aws_config=aws_config)

"""
    DeleteApplication()

Removes the specified application from monitoring. Does not delete the application.

# Required Parameters
- `ResourceGroupName`: The name of the resource group.

"""
delete_application(ResourceGroupName; aws_config::AWSConfig=global_aws_config()) = application_insights("DeleteApplication", Dict{String, Any}("ResourceGroupName"=>ResourceGroupName); aws_config=aws_config)
delete_application(ResourceGroupName, args::AbstractDict{String, <:Any}; aws_config::AWSConfig=global_aws_config()) = application_insights("DeleteApplication", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("ResourceGroupName"=>ResourceGroupName), args)); aws_config=aws_config)

"""
    DeleteComponent()

Ungroups a custom component. When you ungroup custom components, all applicable monitors that are set up for the component are removed and the instances revert to their standalone status.

# Required Parameters
- `ComponentName`: The name of the component.
- `ResourceGroupName`: The name of the resource group.

"""
delete_component(ComponentName, ResourceGroupName; aws_config::AWSConfig=global_aws_config()) = application_insights("DeleteComponent", Dict{String, Any}("ComponentName"=>ComponentName, "ResourceGroupName"=>ResourceGroupName); aws_config=aws_config)
delete_component(ComponentName, ResourceGroupName, args::AbstractDict{String, <:Any}; aws_config::AWSConfig=global_aws_config()) = application_insights("DeleteComponent", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("ComponentName"=>ComponentName, "ResourceGroupName"=>ResourceGroupName), args)); aws_config=aws_config)

"""
    DeleteLogPattern()

Removes the specified log pattern from a LogPatternSet.

# Required Parameters
- `PatternName`: The name of the log pattern.
- `PatternSetName`: The name of the log pattern set.
- `ResourceGroupName`: The name of the resource group.

"""
delete_log_pattern(PatternName, PatternSetName, ResourceGroupName; aws_config::AWSConfig=global_aws_config()) = application_insights("DeleteLogPattern", Dict{String, Any}("PatternName"=>PatternName, "PatternSetName"=>PatternSetName, "ResourceGroupName"=>ResourceGroupName); aws_config=aws_config)
delete_log_pattern(PatternName, PatternSetName, ResourceGroupName, args::AbstractDict{String, <:Any}; aws_config::AWSConfig=global_aws_config()) = application_insights("DeleteLogPattern", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("PatternName"=>PatternName, "PatternSetName"=>PatternSetName, "ResourceGroupName"=>ResourceGroupName), args)); aws_config=aws_config)

"""
    DescribeApplication()

Describes the application.

# Required Parameters
- `ResourceGroupName`: The name of the resource group.

"""
describe_application(ResourceGroupName; aws_config::AWSConfig=global_aws_config()) = application_insights("DescribeApplication", Dict{String, Any}("ResourceGroupName"=>ResourceGroupName); aws_config=aws_config)
describe_application(ResourceGroupName, args::AbstractDict{String, <:Any}; aws_config::AWSConfig=global_aws_config()) = application_insights("DescribeApplication", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("ResourceGroupName"=>ResourceGroupName), args)); aws_config=aws_config)

"""
    DescribeComponent()

Describes a component and lists the resources that are grouped together in a component.

# Required Parameters
- `ComponentName`: The name of the component.
- `ResourceGroupName`: The name of the resource group.

"""
describe_component(ComponentName, ResourceGroupName; aws_config::AWSConfig=global_aws_config()) = application_insights("DescribeComponent", Dict{String, Any}("ComponentName"=>ComponentName, "ResourceGroupName"=>ResourceGroupName); aws_config=aws_config)
describe_component(ComponentName, ResourceGroupName, args::AbstractDict{String, <:Any}; aws_config::AWSConfig=global_aws_config()) = application_insights("DescribeComponent", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("ComponentName"=>ComponentName, "ResourceGroupName"=>ResourceGroupName), args)); aws_config=aws_config)

"""
    DescribeComponentConfiguration()

Describes the monitoring configuration of the component.

# Required Parameters
- `ComponentName`: The name of the component.
- `ResourceGroupName`: The name of the resource group.

"""
describe_component_configuration(ComponentName, ResourceGroupName; aws_config::AWSConfig=global_aws_config()) = application_insights("DescribeComponentConfiguration", Dict{String, Any}("ComponentName"=>ComponentName, "ResourceGroupName"=>ResourceGroupName); aws_config=aws_config)
describe_component_configuration(ComponentName, ResourceGroupName, args::AbstractDict{String, <:Any}; aws_config::AWSConfig=global_aws_config()) = application_insights("DescribeComponentConfiguration", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("ComponentName"=>ComponentName, "ResourceGroupName"=>ResourceGroupName), args)); aws_config=aws_config)

"""
    DescribeComponentConfigurationRecommendation()

Describes the recommended monitoring configuration of the component.

# Required Parameters
- `ComponentName`: The name of the component.
- `ResourceGroupName`: The name of the resource group.
- `Tier`: The tier of the application component. Supported tiers include DOT_NET_CORE, DOT_NET_WORKER, DOT_NET_WEB, SQL_SERVER, and DEFAULT.

"""
describe_component_configuration_recommendation(ComponentName, ResourceGroupName, Tier; aws_config::AWSConfig=global_aws_config()) = application_insights("DescribeComponentConfigurationRecommendation", Dict{String, Any}("ComponentName"=>ComponentName, "ResourceGroupName"=>ResourceGroupName, "Tier"=>Tier); aws_config=aws_config)
describe_component_configuration_recommendation(ComponentName, ResourceGroupName, Tier, args::AbstractDict{String, <:Any}; aws_config::AWSConfig=global_aws_config()) = application_insights("DescribeComponentConfigurationRecommendation", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("ComponentName"=>ComponentName, "ResourceGroupName"=>ResourceGroupName, "Tier"=>Tier), args)); aws_config=aws_config)

"""
    DescribeLogPattern()

Describe a specific log pattern from a LogPatternSet.

# Required Parameters
- `PatternName`: The name of the log pattern.
- `PatternSetName`: The name of the log pattern set.
- `ResourceGroupName`: The name of the resource group.

"""
describe_log_pattern(PatternName, PatternSetName, ResourceGroupName; aws_config::AWSConfig=global_aws_config()) = application_insights("DescribeLogPattern", Dict{String, Any}("PatternName"=>PatternName, "PatternSetName"=>PatternSetName, "ResourceGroupName"=>ResourceGroupName); aws_config=aws_config)
describe_log_pattern(PatternName, PatternSetName, ResourceGroupName, args::AbstractDict{String, <:Any}; aws_config::AWSConfig=global_aws_config()) = application_insights("DescribeLogPattern", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("PatternName"=>PatternName, "PatternSetName"=>PatternSetName, "ResourceGroupName"=>ResourceGroupName), args)); aws_config=aws_config)

"""
    DescribeObservation()

Describes an anomaly or error with the application.

# Required Parameters
- `ObservationId`: The ID of the observation.

"""
describe_observation(ObservationId; aws_config::AWSConfig=global_aws_config()) = application_insights("DescribeObservation", Dict{String, Any}("ObservationId"=>ObservationId); aws_config=aws_config)
describe_observation(ObservationId, args::AbstractDict{String, <:Any}; aws_config::AWSConfig=global_aws_config()) = application_insights("DescribeObservation", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("ObservationId"=>ObservationId), args)); aws_config=aws_config)

"""
    DescribeProblem()

Describes an application problem.

# Required Parameters
- `ProblemId`: The ID of the problem.

"""
describe_problem(ProblemId; aws_config::AWSConfig=global_aws_config()) = application_insights("DescribeProblem", Dict{String, Any}("ProblemId"=>ProblemId); aws_config=aws_config)
describe_problem(ProblemId, args::AbstractDict{String, <:Any}; aws_config::AWSConfig=global_aws_config()) = application_insights("DescribeProblem", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("ProblemId"=>ProblemId), args)); aws_config=aws_config)

"""
    DescribeProblemObservations()

Describes the anomalies or errors associated with the problem.

# Required Parameters
- `ProblemId`: The ID of the problem.

"""
describe_problem_observations(ProblemId; aws_config::AWSConfig=global_aws_config()) = application_insights("DescribeProblemObservations", Dict{String, Any}("ProblemId"=>ProblemId); aws_config=aws_config)
describe_problem_observations(ProblemId, args::AbstractDict{String, <:Any}; aws_config::AWSConfig=global_aws_config()) = application_insights("DescribeProblemObservations", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("ProblemId"=>ProblemId), args)); aws_config=aws_config)

"""
    ListApplications()

Lists the IDs of the applications that you are monitoring. 

# Optional Parameters
- `MaxResults`: The maximum number of results to return in a single call. To retrieve the remaining results, make another call with the returned NextToken value.
- `NextToken`: The token to request the next page of results.
"""
list_applications(; aws_config::AWSConfig=global_aws_config()) = application_insights("ListApplications"; aws_config=aws_config)
list_applications(args::AbstractDict{String, <:Any}; aws_config::AWSConfig=global_aws_config()) = application_insights("ListApplications", args; aws_config=aws_config)

"""
    ListComponents()

Lists the auto-grouped, standalone, and custom components of the application.

# Required Parameters
- `ResourceGroupName`: The name of the resource group.

# Optional Parameters
- `MaxResults`: The maximum number of results to return in a single call. To retrieve the remaining results, make another call with the returned NextToken value.
- `NextToken`: The token to request the next page of results.
"""
list_components(ResourceGroupName; aws_config::AWSConfig=global_aws_config()) = application_insights("ListComponents", Dict{String, Any}("ResourceGroupName"=>ResourceGroupName); aws_config=aws_config)
list_components(ResourceGroupName, args::AbstractDict{String, <:Any}; aws_config::AWSConfig=global_aws_config()) = application_insights("ListComponents", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("ResourceGroupName"=>ResourceGroupName), args)); aws_config=aws_config)

"""
    ListConfigurationHistory()

 Lists the INFO, WARN, and ERROR events for periodic configuration updates performed by Application Insights. Examples of events represented are:    INFO: creating a new alarm or updating an alarm threshold.   WARN: alarm not created due to insufficient data points used to predict thresholds.   ERROR: alarm not created due to permission errors or exceeding quotas.   

# Optional Parameters
- `EndTime`: The end time of the event.
- `EventStatus`: The status of the configuration update event. Possible values include INFO, WARN, and ERROR.
- `MaxResults`:  The maximum number of results returned by ListConfigurationHistory in paginated output. When this parameter is used, ListConfigurationHistory returns only MaxResults in a single page along with a NextToken response element. The remaining results of the initial request can be seen by sending another ListConfigurationHistory request with the returned NextToken value. If this parameter is not used, then ListConfigurationHistory returns all results. 
- `NextToken`: The NextToken value returned from a previous paginated ListConfigurationHistory request where MaxResults was used and the results exceeded the value of that parameter. Pagination continues from the end of the previous results that returned the NextToken value. This value is null when there are no more results to return.
- `ResourceGroupName`: Resource group to which the application belongs. 
- `StartTime`: The start time of the event. 
"""
list_configuration_history(; aws_config::AWSConfig=global_aws_config()) = application_insights("ListConfigurationHistory"; aws_config=aws_config)
list_configuration_history(args::AbstractDict{String, <:Any}; aws_config::AWSConfig=global_aws_config()) = application_insights("ListConfigurationHistory", args; aws_config=aws_config)

"""
    ListLogPatternSets()

Lists the log pattern sets in the specific application.

# Required Parameters
- `ResourceGroupName`: The name of the resource group.

# Optional Parameters
- `MaxResults`: The maximum number of results to return in a single call. To retrieve the remaining results, make another call with the returned NextToken value.
- `NextToken`: The token to request the next page of results.
"""
list_log_pattern_sets(ResourceGroupName; aws_config::AWSConfig=global_aws_config()) = application_insights("ListLogPatternSets", Dict{String, Any}("ResourceGroupName"=>ResourceGroupName); aws_config=aws_config)
list_log_pattern_sets(ResourceGroupName, args::AbstractDict{String, <:Any}; aws_config::AWSConfig=global_aws_config()) = application_insights("ListLogPatternSets", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("ResourceGroupName"=>ResourceGroupName), args)); aws_config=aws_config)

"""
    ListLogPatterns()

Lists the log patterns in the specific log LogPatternSet.

# Required Parameters
- `ResourceGroupName`: The name of the resource group.

# Optional Parameters
- `MaxResults`: The maximum number of results to return in a single call. To retrieve the remaining results, make another call with the returned NextToken value.
- `NextToken`: The token to request the next page of results.
- `PatternSetName`: The name of the log pattern set.
"""
list_log_patterns(ResourceGroupName; aws_config::AWSConfig=global_aws_config()) = application_insights("ListLogPatterns", Dict{String, Any}("ResourceGroupName"=>ResourceGroupName); aws_config=aws_config)
list_log_patterns(ResourceGroupName, args::AbstractDict{String, <:Any}; aws_config::AWSConfig=global_aws_config()) = application_insights("ListLogPatterns", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("ResourceGroupName"=>ResourceGroupName), args)); aws_config=aws_config)

"""
    ListProblems()

Lists the problems with your application.

# Optional Parameters
- `EndTime`: The time when the problem ended, in epoch seconds. If not specified, problems within the past seven days are returned.
- `MaxResults`: The maximum number of results to return in a single call. To retrieve the remaining results, make another call with the returned NextToken value.
- `NextToken`: The token to request the next page of results.
- `ResourceGroupName`: The name of the resource group.
- `StartTime`: The time when the problem was detected, in epoch seconds. If you don't specify a time frame for the request, problems within the past seven days are returned.
"""
list_problems(; aws_config::AWSConfig=global_aws_config()) = application_insights("ListProblems"; aws_config=aws_config)
list_problems(args::AbstractDict{String, <:Any}; aws_config::AWSConfig=global_aws_config()) = application_insights("ListProblems", args; aws_config=aws_config)

"""
    ListTagsForResource()

Retrieve a list of the tags (keys and values) that are associated with a specified application. A tag is a label that you optionally define and associate with an application. Each tag consists of a required tag key and an optional associated tag value. A tag key is a general label that acts as a category for more specific tag values. A tag value acts as a descriptor within a tag key.

# Required Parameters
- `ResourceARN`: The Amazon Resource Name (ARN) of the application that you want to retrieve tag information for.

"""
list_tags_for_resource(ResourceARN; aws_config::AWSConfig=global_aws_config()) = application_insights("ListTagsForResource", Dict{String, Any}("ResourceARN"=>ResourceARN); aws_config=aws_config)
list_tags_for_resource(ResourceARN, args::AbstractDict{String, <:Any}; aws_config::AWSConfig=global_aws_config()) = application_insights("ListTagsForResource", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("ResourceARN"=>ResourceARN), args)); aws_config=aws_config)

"""
    TagResource()

Add one or more tags (keys and values) to a specified application. A tag is a label that you optionally define and associate with an application. Tags can help you categorize and manage application in different ways, such as by purpose, owner, environment, or other criteria.  Each tag consists of a required tag key and an associated tag value, both of which you define. A tag key is a general label that acts as a category for more specific tag values. A tag value acts as a descriptor within a tag key.

# Required Parameters
- `ResourceARN`: The Amazon Resource Name (ARN) of the application that you want to add one or more tags to.
- `Tags`: A list of tags that to add to the application. A tag consists of a required tag key (Key) and an associated tag value (Value). The maximum length of a tag key is 128 characters. The maximum length of a tag value is 256 characters.

"""
tag_resource(ResourceARN, Tags; aws_config::AWSConfig=global_aws_config()) = application_insights("TagResource", Dict{String, Any}("ResourceARN"=>ResourceARN, "Tags"=>Tags); aws_config=aws_config)
tag_resource(ResourceARN, Tags, args::AbstractDict{String, <:Any}; aws_config::AWSConfig=global_aws_config()) = application_insights("TagResource", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("ResourceARN"=>ResourceARN, "Tags"=>Tags), args)); aws_config=aws_config)

"""
    UntagResource()

Remove one or more tags (keys and values) from a specified application.

# Required Parameters
- `ResourceARN`: The Amazon Resource Name (ARN) of the application that you want to remove one or more tags from.
- `TagKeys`: The tags (tag keys) that you want to remove from the resource. When you specify a tag key, the action removes both that key and its associated tag value. To remove more than one tag from the application, append the TagKeys parameter and argument for each additional tag to remove, separated by an ampersand. 

"""
untag_resource(ResourceARN, TagKeys; aws_config::AWSConfig=global_aws_config()) = application_insights("UntagResource", Dict{String, Any}("ResourceARN"=>ResourceARN, "TagKeys"=>TagKeys); aws_config=aws_config)
untag_resource(ResourceARN, TagKeys, args::AbstractDict{String, <:Any}; aws_config::AWSConfig=global_aws_config()) = application_insights("UntagResource", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("ResourceARN"=>ResourceARN, "TagKeys"=>TagKeys), args)); aws_config=aws_config)

"""
    UpdateApplication()

Updates the application.

# Required Parameters
- `ResourceGroupName`: The name of the resource group.

# Optional Parameters
- `CWEMonitorEnabled`:  Indicates whether Application Insights can listen to CloudWatch events for the application resources, such as instance terminated, failed deployment, and others. 
- `OpsCenterEnabled`:  When set to true, creates opsItems for any problems detected on an application. 
- `OpsItemSNSTopicArn`:  The SNS topic provided to Application Insights that is associated to the created opsItem. Allows you to receive notifications for updates to the opsItem.
- `RemoveSNSTopic`:  Disassociates the SNS topic from the opsItem created for detected problems.
"""
update_application(ResourceGroupName; aws_config::AWSConfig=global_aws_config()) = application_insights("UpdateApplication", Dict{String, Any}("ResourceGroupName"=>ResourceGroupName); aws_config=aws_config)
update_application(ResourceGroupName, args::AbstractDict{String, <:Any}; aws_config::AWSConfig=global_aws_config()) = application_insights("UpdateApplication", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("ResourceGroupName"=>ResourceGroupName), args)); aws_config=aws_config)

"""
    UpdateComponent()

Updates the custom component name and/or the list of resources that make up the component.

# Required Parameters
- `ComponentName`: The name of the component.
- `ResourceGroupName`: The name of the resource group.

# Optional Parameters
- `NewComponentName`: The new name of the component.
- `ResourceList`: The list of resource ARNs that belong to the component.
"""
update_component(ComponentName, ResourceGroupName; aws_config::AWSConfig=global_aws_config()) = application_insights("UpdateComponent", Dict{String, Any}("ComponentName"=>ComponentName, "ResourceGroupName"=>ResourceGroupName); aws_config=aws_config)
update_component(ComponentName, ResourceGroupName, args::AbstractDict{String, <:Any}; aws_config::AWSConfig=global_aws_config()) = application_insights("UpdateComponent", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("ComponentName"=>ComponentName, "ResourceGroupName"=>ResourceGroupName), args)); aws_config=aws_config)

"""
    UpdateComponentConfiguration()

Updates the monitoring configurations for the component. The configuration input parameter is an escaped JSON of the configuration and should match the schema of what is returned by DescribeComponentConfigurationRecommendation. 

# Required Parameters
- `ComponentName`: The name of the component.
- `ResourceGroupName`: The name of the resource group.

# Optional Parameters
- `ComponentConfiguration`: The configuration settings of the component. The value is the escaped JSON of the configuration. For more information about the JSON format, see Working with JSON. You can send a request to DescribeComponentConfigurationRecommendation to see the recommended configuration for a component. For the complete format of the component configuration file, see Component Configuration.
- `Monitor`: Indicates whether the application component is monitored.
- `Tier`: The tier of the application component. Supported tiers include DOT_NET_WORKER, DOT_NET_WEB, DOT_NET_CORE, SQL_SERVER, and DEFAULT.
"""
update_component_configuration(ComponentName, ResourceGroupName; aws_config::AWSConfig=global_aws_config()) = application_insights("UpdateComponentConfiguration", Dict{String, Any}("ComponentName"=>ComponentName, "ResourceGroupName"=>ResourceGroupName); aws_config=aws_config)
update_component_configuration(ComponentName, ResourceGroupName, args::AbstractDict{String, <:Any}; aws_config::AWSConfig=global_aws_config()) = application_insights("UpdateComponentConfiguration", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("ComponentName"=>ComponentName, "ResourceGroupName"=>ResourceGroupName), args)); aws_config=aws_config)

"""
    UpdateLogPattern()

Adds a log pattern to a LogPatternSet.

# Required Parameters
- `PatternName`: The name of the log pattern.
- `PatternSetName`: The name of the log pattern set.
- `ResourceGroupName`: The name of the resource group.

# Optional Parameters
- `Pattern`: The log pattern. The pattern must be DFA compatible. Patterns that utilize forward lookahead or backreference constructions are not supported.
- `Rank`: Rank of the log pattern. Must be a value between 1 and 1,000,000. The patterns are sorted by rank, so we recommend that you set your highest priority patterns with the lowest rank. A pattern of rank 1 will be the first to get matched to a log line. A pattern of rank 1,000,000 will be last to get matched. When you configure custom log patterns from the console, a Low severity pattern translates to a 750,000 rank. A Medium severity pattern translates to a 500,000 rank. And a High severity pattern translates to a 250,000 rank. Rank values less than 1 or greater than 1,000,000 are reserved for AWS-provided patterns. 
"""
update_log_pattern(PatternName, PatternSetName, ResourceGroupName; aws_config::AWSConfig=global_aws_config()) = application_insights("UpdateLogPattern", Dict{String, Any}("PatternName"=>PatternName, "PatternSetName"=>PatternSetName, "ResourceGroupName"=>ResourceGroupName); aws_config=aws_config)
update_log_pattern(PatternName, PatternSetName, ResourceGroupName, args::AbstractDict{String, <:Any}; aws_config::AWSConfig=global_aws_config()) = application_insights("UpdateLogPattern", Dict{String, Any}(mergewith(_merge, Dict{String, Any}("PatternName"=>PatternName, "PatternSetName"=>PatternSetName, "ResourceGroupName"=>ResourceGroupName), args)); aws_config=aws_config)

# WARNING ABOUT GENERATED CODE
#
# This file is generated. See the contributing for info on making contributions:
# https://github.com/aws/aws-sdk-ruby/blob/master/CONTRIBUTING.md
#
# WARNING ABOUT GENERATED CODE

require 'seahorse/client/plugins/content_length.rb'
require 'aws-sdk-core/plugins/credentials_configuration.rb'
require 'aws-sdk-core/plugins/logging.rb'
require 'aws-sdk-core/plugins/param_converter.rb'
require 'aws-sdk-core/plugins/param_validator.rb'
require 'aws-sdk-core/plugins/user_agent.rb'
require 'aws-sdk-core/plugins/helpful_socket_errors.rb'
require 'aws-sdk-core/plugins/retry_errors.rb'
require 'aws-sdk-core/plugins/global_configuration.rb'
require 'aws-sdk-core/plugins/regional_endpoint.rb'
require 'aws-sdk-core/plugins/response_paging.rb'
require 'aws-sdk-core/plugins/stub_responses.rb'
require 'aws-sdk-core/plugins/signature_v4.rb'
require 'aws-sdk-core/plugins/protocols/query.rb'

Aws::Plugins::GlobalConfiguration::IDENTIFIERS << :cloudwatch

module Aws
  module CloudWatch
    class Client < Seahorse::Client::Base

      include Aws::ClientStubs

      @identifier = :cloudwatch

      set_api(ClientApi::API)

      add_plugin(Seahorse::Client::Plugins::ContentLength)
      add_plugin(Aws::Plugins::CredentialsConfiguration)
      add_plugin(Aws::Plugins::Logging)
      add_plugin(Aws::Plugins::ParamConverter)
      add_plugin(Aws::Plugins::ParamValidator)
      add_plugin(Aws::Plugins::UserAgent)
      add_plugin(Aws::Plugins::HelpfulSocketErrors)
      add_plugin(Aws::Plugins::RetryErrors)
      add_plugin(Aws::Plugins::GlobalConfiguration)
      add_plugin(Aws::Plugins::RegionalEndpoint)
      add_plugin(Aws::Plugins::ResponsePaging)
      add_plugin(Aws::Plugins::StubResponses)
      add_plugin(Aws::Plugins::SignatureV4)
      add_plugin(Aws::Plugins::Protocols::Query)

      # @option options [required, Aws::CredentialProvider] :credentials
      #   Your AWS credentials. This can be an instance of any one of the
      #   following classes:
      #
      #   * `Aws::Credentials` - Used for configuring static, non-refreshing
      #     credentials.
      #
      #   * `Aws::InstanceProfileCredentials` - Used for loading credentials
      #     from an EC2 IMDS on an EC2 instance.
      #
      #   * `Aws::SharedCredentials` - Used for loading credentials from a
      #     shared file, such as `~/.aws/config`.
      #
      #   * `Aws::AssumeRoleCredentials` - Used when you need to assume a role.
      #
      #   When `:credentials` are not configured directly, the following
      #   locations will be searched for credentials:
      #
      #   * `Aws.config[:credentials]`
      #   * The `:access_key_id`, `:secret_access_key`, and `:session_token` options.
      #   * ENV['AWS_ACCESS_KEY_ID'], ENV['AWS_SECRET_ACCESS_KEY']
      #   * `~/.aws/credentials`
      #   * `~/.aws/config`
      #   * EC2 IMDS instance profile - When used by default, the timeouts are
      #     very aggressive. Construct and pass an instance of
      #     `Aws::InstanceProfileCredentails` to enable retries and extended
      #     timeouts.
      # @option options [required, String] :region
      #   The AWS region to connect to.  The configured `:region` is
      #   used to determine the service `:endpoint`. When not passed,
      #   a default `:region` is search for in the following locations:
      #
      #   * `Aws.config[:region]`
      #   * `ENV['AWS_REGION']`
      #   * `ENV['AMAZON_REGION']`
      #   * `ENV['AWS_DEFAULT_REGION']`
      #   * `~/.aws/credentials`
      #   * `~/.aws/config`
      # @option options [String] :access_key_id
      # @option options [Boolean] :convert_params (true)
      #   When `true`, an attempt is made to coerce request parameters into
      #   the required types.
      # @option options [String] :endpoint
      #   The client endpoint is normally constructed from the `:region`
      #   option. You should only configure an `:endpoint` when connecting
      #   to test endpoints. This should be avalid HTTP(S) URI.
      # @option options [Aws::Log::Formatter] :log_formatter (Aws::Log::Formatter.default)
      #   The log formatter.
      # @option options [Symbol] :log_level (:info)
      #   The log level to send messages to the `:logger` at.
      # @option options [Logger] :logger
      #   The Logger instance to send log messages to.  If this option
      #   is not set, logging will be disabled.
      # @option options [String] :profile ("default")
      #   Used when loading credentials from the shared credentials file
      #   at HOME/.aws/credentials.  When not specified, 'default' is used.
      # @option options [Integer] :retry_limit (3)
      #   The maximum number of times to retry failed requests.  Only
      #   ~ 500 level server errors and certain ~ 400 level client errors
      #   are retried.  Generally, these are throttling errors, data
      #   checksum errors, networking errors, timeout errors and auth
      #   errors from expired credentials.
      # @option options [String] :secret_access_key
      # @option options [String] :session_token
      # @option options [Boolean] :stub_responses (false)
      #   Causes the client to return stubbed responses. By default
      #   fake responses are generated and returned. You can specify
      #   the response data to return or errors to raise by calling
      #   {ClientStubs#stub_responses}. See {ClientStubs} for more information.
      #
      #   ** Please note ** When response stubbing is enabled, no HTTP
      #   requests are made, and retries are disabled.
      # @option options [Boolean] :validate_params (true)
      #   When `true`, request parameters are validated before
      #   sending the request.
      def initialize(*args)
        super
      end

      # @!group API Operations

      # Deletes all specified alarms. In the event of an error, no alarms are
      # deleted.
      # @option params [required, Array<String>] :alarm_names
      #   A list of alarms to be deleted.
      # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
      #
      # @example Request syntax with placeholder values
      #   resp = client.delete_alarms({
      #     alarm_names: ["AlarmName"], # required
      #   })
      # @overload delete_alarms(params = {})
      # @param [Hash] params ({})
      def delete_alarms(params = {}, options = {})
        req = build_request(:delete_alarms, params)
        req.send_request(options)
      end

      # Retrieves history for the specified alarm. Filter alarms by date range
      # or item type. If an alarm name is not specified, Amazon CloudWatch
      # returns histories for all of the owner's alarms.
      #
      # <note markdown="1"> Amazon CloudWatch retains the history of an alarm for two weeks,
      # whether or not you delete the alarm.
      #
      #  </note>
      # @option params [String] :alarm_name
      #   The name of the alarm.
      # @option params [String] :history_item_type
      #   The type of alarm histories to retrieve.
      # @option params [Time,DateTime,Date,Integer,String] :start_date
      #   The starting date to retrieve alarm history.
      # @option params [Time,DateTime,Date,Integer,String] :end_date
      #   The ending date to retrieve alarm history.
      # @option params [Integer] :max_records
      #   The maximum number of alarm history records to retrieve.
      # @option params [String] :next_token
      #   The token returned by a previous call to indicate that there is more
      #   data available.
      # @return [Types::DescribeAlarmHistoryOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::DescribeAlarmHistoryOutput#alarm_history_items #AlarmHistoryItems} => Array&lt;Types::AlarmHistoryItem&gt;
      #   * {Types::DescribeAlarmHistoryOutput#next_token #NextToken} => String
      #
      # @example Request syntax with placeholder values
      #   resp = client.describe_alarm_history({
      #     alarm_name: "AlarmName",
      #     history_item_type: "ConfigurationUpdate", # accepts ConfigurationUpdate, StateUpdate, Action
      #     start_date: Time.now,
      #     end_date: Time.now,
      #     max_records: 1,
      #     next_token: "NextToken",
      #   })
      #
      # @example Response structure
      #   resp.alarm_history_items #=> Array
      #   resp.alarm_history_items[0].alarm_name #=> String
      #   resp.alarm_history_items[0].timestamp #=> Time
      #   resp.alarm_history_items[0].history_item_type #=> String, one of "ConfigurationUpdate", "StateUpdate", "Action"
      #   resp.alarm_history_items[0].history_summary #=> String
      #   resp.alarm_history_items[0].history_data #=> String
      #   resp.next_token #=> String
      # @overload describe_alarm_history(params = {})
      # @param [Hash] params ({})
      def describe_alarm_history(params = {}, options = {})
        req = build_request(:describe_alarm_history, params)
        req.send_request(options)
      end

      # Retrieves alarms with the specified names. If no name is specified,
      # all alarms for the user are returned. Alarms can be retrieved by using
      # only a prefix for the alarm name, the alarm state, or a prefix for any
      # action.
      # @option params [Array<String>] :alarm_names
      #   A list of alarm names to retrieve information for.
      # @option params [String] :alarm_name_prefix
      #   The alarm name prefix. `AlarmNames` cannot be specified if this
      #   parameter is specified.
      # @option params [String] :state_value
      #   The state value to be used in matching alarms.
      # @option params [String] :action_prefix
      #   The action name prefix.
      # @option params [Integer] :max_records
      #   The maximum number of alarm descriptions to retrieve.
      # @option params [String] :next_token
      #   The token returned by a previous call to indicate that there is more
      #   data available.
      # @return [Types::DescribeAlarmsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::DescribeAlarmsOutput#metric_alarms #MetricAlarms} => Array&lt;Types::MetricAlarm&gt;
      #   * {Types::DescribeAlarmsOutput#next_token #NextToken} => String
      #
      # @example Request syntax with placeholder values
      #   resp = client.describe_alarms({
      #     alarm_names: ["AlarmName"],
      #     alarm_name_prefix: "AlarmNamePrefix",
      #     state_value: "OK", # accepts OK, ALARM, INSUFFICIENT_DATA
      #     action_prefix: "ActionPrefix",
      #     max_records: 1,
      #     next_token: "NextToken",
      #   })
      #
      # @example Response structure
      #   resp.metric_alarms #=> Array
      #   resp.metric_alarms[0].alarm_name #=> String
      #   resp.metric_alarms[0].alarm_arn #=> String
      #   resp.metric_alarms[0].alarm_description #=> String
      #   resp.metric_alarms[0].alarm_configuration_updated_timestamp #=> Time
      #   resp.metric_alarms[0].actions_enabled #=> Boolean
      #   resp.metric_alarms[0].ok_actions #=> Array
      #   resp.metric_alarms[0].ok_actions[0] #=> String
      #   resp.metric_alarms[0].alarm_actions #=> Array
      #   resp.metric_alarms[0].alarm_actions[0] #=> String
      #   resp.metric_alarms[0].insufficient_data_actions #=> Array
      #   resp.metric_alarms[0].insufficient_data_actions[0] #=> String
      #   resp.metric_alarms[0].state_value #=> String, one of "OK", "ALARM", "INSUFFICIENT_DATA"
      #   resp.metric_alarms[0].state_reason #=> String
      #   resp.metric_alarms[0].state_reason_data #=> String
      #   resp.metric_alarms[0].state_updated_timestamp #=> Time
      #   resp.metric_alarms[0].metric_name #=> String
      #   resp.metric_alarms[0].namespace #=> String
      #   resp.metric_alarms[0].statistic #=> String, one of "SampleCount", "Average", "Sum", "Minimum", "Maximum"
      #   resp.metric_alarms[0].dimensions #=> Array
      #   resp.metric_alarms[0].dimensions[0].name #=> String
      #   resp.metric_alarms[0].dimensions[0].value #=> String
      #   resp.metric_alarms[0].period #=> Integer
      #   resp.metric_alarms[0].unit #=> String, one of "Seconds", "Microseconds", "Milliseconds", "Bytes", "Kilobytes", "Megabytes", "Gigabytes", "Terabytes", "Bits", "Kilobits", "Megabits", "Gigabits", "Terabits", "Percent", "Count", "Bytes/Second", "Kilobytes/Second", "Megabytes/Second", "Gigabytes/Second", "Terabytes/Second", "Bits/Second", "Kilobits/Second", "Megabits/Second", "Gigabits/Second", "Terabits/Second", "Count/Second", "None"
      #   resp.metric_alarms[0].evaluation_periods #=> Integer
      #   resp.metric_alarms[0].threshold #=> Float
      #   resp.metric_alarms[0].comparison_operator #=> String, one of "GreaterThanOrEqualToThreshold", "GreaterThanThreshold", "LessThanThreshold", "LessThanOrEqualToThreshold"
      #   resp.next_token #=> String
      # @overload describe_alarms(params = {})
      # @param [Hash] params ({})
      def describe_alarms(params = {}, options = {})
        req = build_request(:describe_alarms, params)
        req.send_request(options)
      end

      # Retrieves all alarms for a single metric. Specify a statistic, period,
      # or unit to filter the set of alarms further.
      # @option params [required, String] :metric_name
      #   The name of the metric.
      # @option params [required, String] :namespace
      #   The namespace of the metric.
      # @option params [String] :statistic
      #   The statistic for the metric.
      # @option params [Array<Types::Dimension>] :dimensions
      #   The list of dimensions associated with the metric. If the metric has
      #   any associated dimensions, you must specify them in order for the
      #   DescribeAlarmsForMetric to succeed.
      # @option params [Integer] :period
      #   The period in seconds over which the statistic is applied.
      # @option params [String] :unit
      #   The unit for the metric.
      # @return [Types::DescribeAlarmsForMetricOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::DescribeAlarmsForMetricOutput#metric_alarms #MetricAlarms} => Array&lt;Types::MetricAlarm&gt;
      #
      # @example Request syntax with placeholder values
      #   resp = client.describe_alarms_for_metric({
      #     metric_name: "MetricName", # required
      #     namespace: "Namespace", # required
      #     statistic: "SampleCount", # accepts SampleCount, Average, Sum, Minimum, Maximum
      #     dimensions: [
      #       {
      #         name: "DimensionName", # required
      #         value: "DimensionValue", # required
      #       },
      #     ],
      #     period: 1,
      #     unit: "Seconds", # accepts Seconds, Microseconds, Milliseconds, Bytes, Kilobytes, Megabytes, Gigabytes, Terabytes, Bits, Kilobits, Megabits, Gigabits, Terabits, Percent, Count, Bytes/Second, Kilobytes/Second, Megabytes/Second, Gigabytes/Second, Terabytes/Second, Bits/Second, Kilobits/Second, Megabits/Second, Gigabits/Second, Terabits/Second, Count/Second, None
      #   })
      #
      # @example Response structure
      #   resp.metric_alarms #=> Array
      #   resp.metric_alarms[0].alarm_name #=> String
      #   resp.metric_alarms[0].alarm_arn #=> String
      #   resp.metric_alarms[0].alarm_description #=> String
      #   resp.metric_alarms[0].alarm_configuration_updated_timestamp #=> Time
      #   resp.metric_alarms[0].actions_enabled #=> Boolean
      #   resp.metric_alarms[0].ok_actions #=> Array
      #   resp.metric_alarms[0].ok_actions[0] #=> String
      #   resp.metric_alarms[0].alarm_actions #=> Array
      #   resp.metric_alarms[0].alarm_actions[0] #=> String
      #   resp.metric_alarms[0].insufficient_data_actions #=> Array
      #   resp.metric_alarms[0].insufficient_data_actions[0] #=> String
      #   resp.metric_alarms[0].state_value #=> String, one of "OK", "ALARM", "INSUFFICIENT_DATA"
      #   resp.metric_alarms[0].state_reason #=> String
      #   resp.metric_alarms[0].state_reason_data #=> String
      #   resp.metric_alarms[0].state_updated_timestamp #=> Time
      #   resp.metric_alarms[0].metric_name #=> String
      #   resp.metric_alarms[0].namespace #=> String
      #   resp.metric_alarms[0].statistic #=> String, one of "SampleCount", "Average", "Sum", "Minimum", "Maximum"
      #   resp.metric_alarms[0].dimensions #=> Array
      #   resp.metric_alarms[0].dimensions[0].name #=> String
      #   resp.metric_alarms[0].dimensions[0].value #=> String
      #   resp.metric_alarms[0].period #=> Integer
      #   resp.metric_alarms[0].unit #=> String, one of "Seconds", "Microseconds", "Milliseconds", "Bytes", "Kilobytes", "Megabytes", "Gigabytes", "Terabytes", "Bits", "Kilobits", "Megabits", "Gigabits", "Terabits", "Percent", "Count", "Bytes/Second", "Kilobytes/Second", "Megabytes/Second", "Gigabytes/Second", "Terabytes/Second", "Bits/Second", "Kilobits/Second", "Megabits/Second", "Gigabits/Second", "Terabits/Second", "Count/Second", "None"
      #   resp.metric_alarms[0].evaluation_periods #=> Integer
      #   resp.metric_alarms[0].threshold #=> Float
      #   resp.metric_alarms[0].comparison_operator #=> String, one of "GreaterThanOrEqualToThreshold", "GreaterThanThreshold", "LessThanThreshold", "LessThanOrEqualToThreshold"
      # @overload describe_alarms_for_metric(params = {})
      # @param [Hash] params ({})
      def describe_alarms_for_metric(params = {}, options = {})
        req = build_request(:describe_alarms_for_metric, params)
        req.send_request(options)
      end

      # Disables actions for the specified alarms. When an alarm's actions
      # are disabled the alarm's state may change, but none of the alarm's
      # actions will execute.
      # @option params [required, Array<String>] :alarm_names
      #   The names of the alarms to disable actions for.
      # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
      #
      # @example Request syntax with placeholder values
      #   resp = client.disable_alarm_actions({
      #     alarm_names: ["AlarmName"], # required
      #   })
      # @overload disable_alarm_actions(params = {})
      # @param [Hash] params ({})
      def disable_alarm_actions(params = {}, options = {})
        req = build_request(:disable_alarm_actions, params)
        req.send_request(options)
      end

      # Enables actions for the specified alarms.
      # @option params [required, Array<String>] :alarm_names
      #   The names of the alarms to enable actions for.
      # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
      #
      # @example Request syntax with placeholder values
      #   resp = client.enable_alarm_actions({
      #     alarm_names: ["AlarmName"], # required
      #   })
      # @overload enable_alarm_actions(params = {})
      # @param [Hash] params ({})
      def enable_alarm_actions(params = {}, options = {})
        req = build_request(:enable_alarm_actions, params)
        req.send_request(options)
      end

      # Gets statistics for the specified metric.
      #
      # The maximum number of data points that can be queried is 50,850,
      # whereas the maximum number of data points returned from a single
      # `GetMetricStatistics` request is 1,440. If you make a request that
      # generates more than 1,440 data points, Amazon CloudWatch returns an
      # error. In such a case, you can alter the request by narrowing the
      # specified time range or increasing the specified period. A period can
      # be as short as one minute (60 seconds) or as long as one day (86,400
      # seconds). Alternatively, you can make multiple requests across
      # adjacent time ranges. `GetMetricStatistics` does not return the data
      # in chronological order.
      #
      # Amazon CloudWatch aggregates data points based on the length of the
      # `period` that you specify. For example, if you request statistics with
      # a one-minute granularity, Amazon CloudWatch aggregates data points
      # with time stamps that fall within the same one-minute period. In such
      # a case, the data points queried can greatly outnumber the data points
      # returned.
      #
      # The following examples show various statistics allowed by the data
      # point query maximum of 50,850 when you call `GetMetricStatistics` on
      # Amazon EC2 instances with detailed (one-minute) monitoring enabled:
      #
      # * Statistics for up to 400 instances for a span of one hour
      #
      # * Statistics for up to 35 instances over a span of 24 hours
      #
      # * Statistics for up to 2 instances over a span of 2 weeks
      #
      # For information about the namespace, metric names, and dimensions that
      # other Amazon Web Services products use to send metrics to CloudWatch,
      # go to [Amazon CloudWatch Metrics, Namespaces, and Dimensions
      # Reference][1] in the *Amazon CloudWatch Developer Guide*.
      #
      #
      #
      # [1]: http://docs.aws.amazon.com/AmazonCloudWatch/latest/DeveloperGuide/CW_Support_For_AWS.html
      # @option params [required, String] :namespace
      #   The namespace of the metric, with or without spaces.
      # @option params [required, String] :metric_name
      #   The name of the metric, with or without spaces.
      # @option params [Array<Types::Dimension>] :dimensions
      #   A list of dimensions describing qualities of the metric.
      # @option params [required, Time,DateTime,Date,Integer,String] :start_time
      #   The time stamp to use for determining the first datapoint to return.
      #   The value specified is inclusive; results include datapoints with the
      #   time stamp specified. The time stamp must be in ISO 8601 UTC format
      #   (e.g., 2014-09-03T23:00:00Z).
      #
      #   <note markdown="1"> The specified start time is rounded down to the nearest value.
      #   Datapoints are returned for start times up to two weeks in the past.
      #   Specified start times that are more than two weeks in the past will
      #   not return datapoints for metrics that are older than two weeks.
      #
      #    Data that is timestamped 24 hours or more in the past may take in
      #   excess of 48 hours to become available from submission time using
      #   `GetMetricStatistics`.
      #
      #    </note>
      # @option params [required, Time,DateTime,Date,Integer,String] :end_time
      #   The time stamp to use for determining the last datapoint to return.
      #   The value specified is exclusive; results will include datapoints up
      #   to the time stamp specified. The time stamp must be in ISO 8601 UTC
      #   format (e.g., 2014-09-03T23:00:00Z).
      # @option params [required, Integer] :period
      #   The granularity, in seconds, of the returned datapoints. A `Period`
      #   can be as short as one minute (60 seconds) or as long as one day
      #   (86,400 seconds), and must be a multiple of 60. The default value is
      #   60.
      # @option params [required, Array<String>] :statistics
      #   The metric statistics to return. For information about specific
      #   statistics returned by GetMetricStatistics, see [Statistics][1] in the
      #   *Amazon CloudWatch Developer Guide*.
      #
      #
      #
      #   [1]: http://docs.aws.amazon.com/AmazonCloudWatch/latest/DeveloperGuide/cloudwatch_concepts.html#Statistic
      # @option params [String] :unit
      #   The specific unit for a given metric. Metrics may be reported in
      #   multiple units. Not supplying a unit results in all units being
      #   returned. If the metric only ever reports one unit, specifying a unit
      #   will have no effect.
      # @return [Types::GetMetricStatisticsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::GetMetricStatisticsOutput#label #Label} => String
      #   * {Types::GetMetricStatisticsOutput#datapoints #Datapoints} => Array&lt;Types::Datapoint&gt;
      #
      # @example Request syntax with placeholder values
      #   resp = client.get_metric_statistics({
      #     namespace: "Namespace", # required
      #     metric_name: "MetricName", # required
      #     dimensions: [
      #       {
      #         name: "DimensionName", # required
      #         value: "DimensionValue", # required
      #       },
      #     ],
      #     start_time: Time.now, # required
      #     end_time: Time.now, # required
      #     period: 1, # required
      #     statistics: ["SampleCount"], # required, accepts SampleCount, Average, Sum, Minimum, Maximum
      #     unit: "Seconds", # accepts Seconds, Microseconds, Milliseconds, Bytes, Kilobytes, Megabytes, Gigabytes, Terabytes, Bits, Kilobits, Megabits, Gigabits, Terabits, Percent, Count, Bytes/Second, Kilobytes/Second, Megabytes/Second, Gigabytes/Second, Terabytes/Second, Bits/Second, Kilobits/Second, Megabits/Second, Gigabits/Second, Terabits/Second, Count/Second, None
      #   })
      #
      # @example Response structure
      #   resp.label #=> String
      #   resp.datapoints #=> Array
      #   resp.datapoints[0].timestamp #=> Time
      #   resp.datapoints[0].sample_count #=> Float
      #   resp.datapoints[0].average #=> Float
      #   resp.datapoints[0].sum #=> Float
      #   resp.datapoints[0].minimum #=> Float
      #   resp.datapoints[0].maximum #=> Float
      #   resp.datapoints[0].unit #=> String, one of "Seconds", "Microseconds", "Milliseconds", "Bytes", "Kilobytes", "Megabytes", "Gigabytes", "Terabytes", "Bits", "Kilobits", "Megabits", "Gigabits", "Terabits", "Percent", "Count", "Bytes/Second", "Kilobytes/Second", "Megabytes/Second", "Gigabytes/Second", "Terabytes/Second", "Bits/Second", "Kilobits/Second", "Megabits/Second", "Gigabits/Second", "Terabits/Second", "Count/Second", "None"
      # @overload get_metric_statistics(params = {})
      # @param [Hash] params ({})
      def get_metric_statistics(params = {}, options = {})
        req = build_request(:get_metric_statistics, params)
        req.send_request(options)
      end

      # Returns a list of valid metrics stored for the AWS account owner.
      # Returned metrics can be used with GetMetricStatistics to obtain
      # statistical data for a given metric.
      #
      # <note markdown="1"> Up to 500 results are returned for any one call. To retrieve further
      # results, use returned `NextToken` values with subsequent `ListMetrics`
      # operations.
      #
      #  </note>
      #
      # <note markdown="1"> If you create a metric with PutMetricData, allow up to fifteen minutes
      # for the metric to appear in calls to `ListMetrics`. Statistics about
      # the metric, however, are available sooner using GetMetricStatistics.
      #
      #  </note>
      # @option params [String] :namespace
      #   The namespace to filter against.
      # @option params [String] :metric_name
      #   The name of the metric to filter against.
      # @option params [Array<Types::DimensionFilter>] :dimensions
      #   A list of dimensions to filter against.
      # @option params [String] :next_token
      #   The token returned by a previous call to indicate that there is more
      #   data available.
      # @return [Types::ListMetricsOutput] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::ListMetricsOutput#metrics #Metrics} => Array&lt;Types::Metric&gt;
      #   * {Types::ListMetricsOutput#next_token #NextToken} => String
      #
      # @example Request syntax with placeholder values
      #   resp = client.list_metrics({
      #     namespace: "Namespace",
      #     metric_name: "MetricName",
      #     dimensions: [
      #       {
      #         name: "DimensionName", # required
      #         value: "DimensionValue",
      #       },
      #     ],
      #     next_token: "NextToken",
      #   })
      #
      # @example Response structure
      #   resp.metrics #=> Array
      #   resp.metrics[0].namespace #=> String
      #   resp.metrics[0].metric_name #=> String
      #   resp.metrics[0].dimensions #=> Array
      #   resp.metrics[0].dimensions[0].name #=> String
      #   resp.metrics[0].dimensions[0].value #=> String
      #   resp.next_token #=> String
      # @overload list_metrics(params = {})
      # @param [Hash] params ({})
      def list_metrics(params = {}, options = {})
        req = build_request(:list_metrics, params)
        req.send_request(options)
      end

      # Creates or updates an alarm and associates it with the specified
      # Amazon CloudWatch metric. Optionally, this operation can associate one
      # or more Amazon SNS resources with the alarm.
      #
      # When this operation creates an alarm, the alarm state is immediately
      # set to `INSUFFICIENT_DATA`. The alarm is evaluated and its
      # `StateValue` is set appropriately. Any actions associated with the
      # `StateValue` are then executed.
      #
      # <note markdown="1"> When updating an existing alarm, its `StateValue` is left unchanged,
      # but it completely overwrites the alarm's previous configuration.
      #
      #  </note>
      #
      # <note markdown="1"> If you are using an AWS Identity and Access Management (IAM) account
      # to create or modify an alarm, you must have the following Amazon EC2
      # permissions:
      #
      #  * `ec2:DescribeInstanceStatus` and `ec2:DescribeInstances` for all
      #   alarms on Amazon EC2 instance status metrics.
      #
      # * `ec2:StopInstances` for alarms with stop actions.
      #
      # * `ec2:TerminateInstances` for alarms with terminate actions.
      #
      # * `ec2:DescribeInstanceRecoveryAttribute`, and `ec2:RecoverInstances`
      #   for alarms with recover actions.
      #
      #  If you have read/write permissions for Amazon CloudWatch but not for
      # Amazon EC2, you can still create an alarm but the stop or terminate
      # actions won't be performed on the Amazon EC2 instance. However, if
      # you are later granted permission to use the associated Amazon EC2
      # APIs, the alarm actions you created earlier will be performed. For
      # more information about IAM permissions, see [Permissions and
      # Policies][1] in *Using IAM*.
      #
      #  If you are using an IAM role (e.g., an Amazon EC2 instance profile),
      # you cannot stop or terminate the instance using alarm actions.
      # However, you can still see the alarm state and perform any other
      # actions such as Amazon SNS notifications or Auto Scaling policies.
      #
      #  If you are using temporary security credentials granted using the AWS
      # Security Token Service (AWS STS), you cannot stop or terminate an
      # Amazon EC2 instance using alarm actions.
      #
      #  </note>
      #
      #
      #
      # [1]: http://docs.aws.amazon.com/IAM/latest/UserGuide/PermissionsAndPolicies.html
      # @option params [required, String] :alarm_name
      #   The descriptive name for the alarm. This name must be unique within
      #   the user's AWS account
      # @option params [String] :alarm_description
      #   The description for the alarm.
      # @option params [Boolean] :actions_enabled
      #   Indicates whether or not actions should be executed during any changes
      #   to the alarm's state.
      # @option params [Array<String>] :ok_actions
      #   The list of actions to execute when this alarm transitions into an
      #   `OK` state from any other state. Each action is specified as an Amazon
      #   Resource Name (ARN).
      #
      #   Valid Values: arn:aws:automate:*region (e.g., us-east-1)*\:ec2:stop \|
      #   arn:aws:automate:*region (e.g., us-east-1)*\:ec2:terminate \|
      #   arn:aws:automate:*region (e.g., us-east-1)*\:ec2:recover
      #
      #   Valid Values (for use with IAM roles):
      #   arn:aws:swf:us-east-1:\\\{*customer-account*\\}:action/actions/AWS\_EC2.InstanceId.Stop/1.0
      #   \|
      #   arn:aws:swf:us-east-1:\\\{*customer-account*\\}:action/actions/AWS\_EC2.InstanceId.Terminate/1.0
      #   \|
      #   arn:aws:swf:us-east-1:\\\{*customer-account*\\}:action/actions/AWS\_EC2.InstanceId.Reboot/1.0
      #
      #   **Note:** You must create at least one stop, terminate, or reboot
      #   alarm using the Amazon EC2 or CloudWatch console to create the
      #   **EC2ActionsAccess** IAM role for the first time. After this IAM role
      #   is created, you can create stop, terminate, or reboot alarms using the
      #   CLI.
      # @option params [Array<String>] :alarm_actions
      #   The list of actions to execute when this alarm transitions into an
      #   `ALARM` state from any other state. Each action is specified as an
      #   Amazon Resource Name (ARN).
      #
      #   Valid Values: arn:aws:automate:*region (e.g., us-east-1)*\:ec2:stop \|
      #   arn:aws:automate:*region (e.g., us-east-1)*\:ec2:terminate \|
      #   arn:aws:automate:*region (e.g., us-east-1)*\:ec2:recover
      #
      #   Valid Values (for use with IAM roles):
      #   arn:aws:swf:us-east-1:\\\{*customer-account*\\}:action/actions/AWS\_EC2.InstanceId.Stop/1.0
      #   \|
      #   arn:aws:swf:us-east-1:\\\{*customer-account*\\}:action/actions/AWS\_EC2.InstanceId.Terminate/1.0
      #   \|
      #   arn:aws:swf:us-east-1:\\\{*customer-account*\\}:action/actions/AWS\_EC2.InstanceId.Reboot/1.0
      #
      #   **Note:** You must create at least one stop, terminate, or reboot
      #   alarm using the Amazon EC2 or CloudWatch console to create the
      #   **EC2ActionsAccess** IAM role for the first time. After this IAM role
      #   is created, you can create stop, terminate, or reboot alarms using the
      #   CLI.
      # @option params [Array<String>] :insufficient_data_actions
      #   The list of actions to execute when this alarm transitions into an
      #   `INSUFFICIENT_DATA` state from any other state. Each action is
      #   specified as an Amazon Resource Name (ARN).
      #
      #   Valid Values: arn:aws:automate:*region (e.g., us-east-1)*\:ec2:stop \|
      #   arn:aws:automate:*region (e.g., us-east-1)*\:ec2:terminate \|
      #   arn:aws:automate:*region (e.g., us-east-1)*\:ec2:recover
      #
      #   Valid Values (for use with IAM roles):
      #   arn:aws:swf:us-east-1:\\\{*customer-account*\\}:action/actions/AWS\_EC2.InstanceId.Stop/1.0
      #   \|
      #   arn:aws:swf:us-east-1:\\\{*customer-account*\\}:action/actions/AWS\_EC2.InstanceId.Terminate/1.0
      #   \|
      #   arn:aws:swf:us-east-1:\\\{*customer-account*\\}:action/actions/AWS\_EC2.InstanceId.Reboot/1.0
      #
      #   **Note:** You must create at least one stop, terminate, or reboot
      #   alarm using the Amazon EC2 or CloudWatch console to create the
      #   **EC2ActionsAccess** IAM role for the first time. After this IAM role
      #   is created, you can create stop, terminate, or reboot alarms using the
      #   CLI.
      # @option params [required, String] :metric_name
      #   The name for the alarm's associated metric.
      # @option params [required, String] :namespace
      #   The namespace for the alarm's associated metric.
      # @option params [required, String] :statistic
      #   The statistic to apply to the alarm's associated metric.
      # @option params [Array<Types::Dimension>] :dimensions
      #   The dimensions for the alarm's associated metric.
      # @option params [required, Integer] :period
      #   The period in seconds over which the specified statistic is applied.
      # @option params [String] :unit
      #   The statistic's unit of measure. For example, the units for the
      #   Amazon EC2 NetworkIn metric are Bytes because NetworkIn tracks the
      #   number of bytes that an instance receives on all network interfaces.
      #   You can also specify a unit when you create a custom metric. Units
      #   help provide conceptual meaning to your data. Metric data points that
      #   specify a unit of measure, such as Percent, are aggregated separately.
      #
      #   **Note:** If you specify a unit, you must use a unit that is
      #   appropriate for the metric. Otherwise, this can cause an Amazon
      #   CloudWatch alarm to get stuck in the INSUFFICIENT DATA state.
      # @option params [required, Integer] :evaluation_periods
      #   The number of periods over which data is compared to the specified
      #   threshold.
      # @option params [required, Float] :threshold
      #   The value against which the specified statistic is compared.
      # @option params [required, String] :comparison_operator
      #   The arithmetic operation to use when comparing the specified
      #   `Statistic` and `Threshold`. The specified `Statistic` value is used
      #   as the first operand.
      # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
      #
      # @example Request syntax with placeholder values
      #   resp = client.put_metric_alarm({
      #     alarm_name: "AlarmName", # required
      #     alarm_description: "AlarmDescription",
      #     actions_enabled: false,
      #     ok_actions: ["ResourceName"],
      #     alarm_actions: ["ResourceName"],
      #     insufficient_data_actions: ["ResourceName"],
      #     metric_name: "MetricName", # required
      #     namespace: "Namespace", # required
      #     statistic: "SampleCount", # required, accepts SampleCount, Average, Sum, Minimum, Maximum
      #     dimensions: [
      #       {
      #         name: "DimensionName", # required
      #         value: "DimensionValue", # required
      #       },
      #     ],
      #     period: 1, # required
      #     unit: "Seconds", # accepts Seconds, Microseconds, Milliseconds, Bytes, Kilobytes, Megabytes, Gigabytes, Terabytes, Bits, Kilobits, Megabits, Gigabits, Terabits, Percent, Count, Bytes/Second, Kilobytes/Second, Megabytes/Second, Gigabytes/Second, Terabytes/Second, Bits/Second, Kilobits/Second, Megabits/Second, Gigabits/Second, Terabits/Second, Count/Second, None
      #     evaluation_periods: 1, # required
      #     threshold: 1.0, # required
      #     comparison_operator: "GreaterThanOrEqualToThreshold", # required, accepts GreaterThanOrEqualToThreshold, GreaterThanThreshold, LessThanThreshold, LessThanOrEqualToThreshold
      #   })
      # @overload put_metric_alarm(params = {})
      # @param [Hash] params ({})
      def put_metric_alarm(params = {}, options = {})
        req = build_request(:put_metric_alarm, params)
        req.send_request(options)
      end

      # Publishes metric data points to Amazon CloudWatch. Amazon CloudWatch
      # associates the data points with the specified metric. If the specified
      # metric does not exist, Amazon CloudWatch creates the metric. When
      # Amazon CloudWatch creates a metric, it can take up to fifteen minutes
      # for the metric to appear in calls to ListMetrics.
      #
      # Each `PutMetricData` request is limited to 8 KB in size for HTTP GET
      # requests and is limited to 40 KB in size for HTTP POST requests.
      #
      # Although the `Value` parameter accepts numbers of type `Double`,
      # Amazon CloudWatch rejects values that are either too small or too
      # large. Values must be in the range of 8.515920e-109 to 1.174271e+108
      # (Base 10) or 2e-360 to 2e360 (Base 2). In addition, special values
      # (e.g., NaN, +Infinity, -Infinity) are not supported.
      #
      # Data that is timestamped 24 hours or more in the past may take in
      # excess of 48 hours to become available from submission time using
      # `GetMetricStatistics`.
      # @option params [required, String] :namespace
      #   The namespace for the metric data.
      #
      #   <note markdown="1"> You cannot specify a namespace that begins with "AWS/". Namespaces
      #   that begin with "AWS/" are reserved for other Amazon Web Services
      #   products that send metrics to Amazon CloudWatch.
      #
      #    </note>
      # @option params [required, Array<Types::MetricDatum>] :metric_data
      #   A list of data describing the metric.
      # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
      #
      # @example Request syntax with placeholder values
      #   resp = client.put_metric_data({
      #     namespace: "Namespace", # required
      #     metric_data: [ # required
      #       {
      #         metric_name: "MetricName", # required
      #         dimensions: [
      #           {
      #             name: "DimensionName", # required
      #             value: "DimensionValue", # required
      #           },
      #         ],
      #         timestamp: Time.now,
      #         value: 1.0,
      #         statistic_values: {
      #           sample_count: 1.0, # required
      #           sum: 1.0, # required
      #           minimum: 1.0, # required
      #           maximum: 1.0, # required
      #         },
      #         unit: "Seconds", # accepts Seconds, Microseconds, Milliseconds, Bytes, Kilobytes, Megabytes, Gigabytes, Terabytes, Bits, Kilobits, Megabits, Gigabits, Terabits, Percent, Count, Bytes/Second, Kilobytes/Second, Megabytes/Second, Gigabytes/Second, Terabytes/Second, Bits/Second, Kilobits/Second, Megabits/Second, Gigabits/Second, Terabits/Second, Count/Second, None
      #       },
      #     ],
      #   })
      # @overload put_metric_data(params = {})
      # @param [Hash] params ({})
      def put_metric_data(params = {}, options = {})
        req = build_request(:put_metric_data, params)
        req.send_request(options)
      end

      # Temporarily sets the state of an alarm for testing purposes. When the
      # updated `StateValue` differs from the previous value, the action
      # configured for the appropriate state is invoked. For example, if your
      # alarm is configured to send an Amazon SNS message when an alarm is
      # triggered, temporarily changing the alarm's state to **ALARM** sends
      # an Amazon SNS message. The alarm returns to its actual state (often
      # within seconds). Because the alarm state change happens very quickly,
      # it is typically only visible in the alarm's **History** tab in the
      # Amazon CloudWatch console or through `DescribeAlarmHistory`.
      # @option params [required, String] :alarm_name
      #   The descriptive name for the alarm. This name must be unique within
      #   the user's AWS account. The maximum length is 255 characters.
      # @option params [required, String] :state_value
      #   The value of the state.
      # @option params [required, String] :state_reason
      #   The reason that this alarm is set to this specific state (in
      #   human-readable text format)
      # @option params [String] :state_reason_data
      #   The reason that this alarm is set to this specific state (in
      #   machine-readable JSON format)
      # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
      #
      # @example Request syntax with placeholder values
      #   resp = client.set_alarm_state({
      #     alarm_name: "AlarmName", # required
      #     state_value: "OK", # required, accepts OK, ALARM, INSUFFICIENT_DATA
      #     state_reason: "StateReason", # required
      #     state_reason_data: "StateReasonData",
      #   })
      # @overload set_alarm_state(params = {})
      # @param [Hash] params ({})
      def set_alarm_state(params = {}, options = {})
        req = build_request(:set_alarm_state, params)
        req.send_request(options)
      end

      # @!endgroup

      # Polls an API operation until a resource enters a desired state.
      #
      # ## Basic Usage
      #
      # A waiter will call an API operation until:
      #
      # * It is successful
      # * It enters a terminal state
      # * It makes the maximum number of attempts
      #
      # In between attempts, the waiter will sleep.
      #
      #     # polls in a loop, sleeping between attempts
      #     client.waiter_until(waiter_name, params)
      #
      # ## Configuration
      #
      # You can configure the maximum number of polling attempts, and the
      # delay (in seconds) between each polling attempt. You can pass
      # configuration as the final arguments hash.
      #
      #     # poll for ~25 seconds
      #     client.wait_until(waiter_name, params, {
      #       max_attempts: 5,
      #       delay: 5,
      #     })
      #
      # ## Callbacks
      #
      # You can be notified before each polling attempt and before each
      # delay. If you throw `:success` or `:failure` from these callbacks,
      # it will terminate the waiter.
      #
      #     started_at = Time.now
      #     client.wait_until(waiter_name, params, {
      #
      #       # disable max attempts
      #       max_attempts: nil,
      #
      #       # poll for 1 hour, instead of a number of attempts
      #       before_wait: -> (attempts, response) do
      #         throw :failure if Time.now - started_at > 3600
      #       end
      #     })
      #
      # ## Handling Errors
      #
      # When a waiter is unsuccessful, it will raise an error.
      # All of the failure errors extend from
      # {Aws::Waiters::Errors::WaiterFailed}.
      #
      #     begin
      #       client.wait_until(...)
      #     rescue Aws::Waiters::Errors::WaiterFailed
      #       # resource did not enter the desired state in time
      #     end
      #
      # ## Valid Waiters
      #
      # The following table lists the valid waiter names, the operations they call,
      # and the default `:delay` and `:max_attempts` values.
      #
      # | waiter_name  | params             | :delay   | :max_attempts |
      # | ------------ | ------------------ | -------- | ------------- |
      # | alarm_exists | {#describe_alarms} | 5        | 40            |
      #
      # @raise [Errors::FailureStateError] Raised when the waiter terminates
      #   because the waiter has entered a state that it will not transition
      #   out of, preventing success.
      #
      # @raise [Errors::TooManyAttemptsError] Raised when the configured
      #   maximum number of attempts have been made, and the waiter is not
      #   yet successful.
      #
      # @raise [Errors::UnexpectedError] Raised when an error is encounted
      #   while polling for a resource that is not expected.
      #
      # @raise [Errors::NoSuchWaiterError] Raised when you request to wait
      #   for an unknown state.
      #
      # @return [Boolean] Returns `true` if the waiter was successful.
      # @param [Symbol] waiter_name
      # @param [Hash] params ({})
      # @param [Hash] options ({})
      # @option options [Integer] :max_attempts
      # @option options [Integer] :delay
      # @option options [Proc] :before_attempt
      # @option options [Proc] :before_wait
      def wait_until(waiter_name, params = {}, options = {})
        w = waiter(waiter_name, options)
        yield(w.waiter) if block_given? # deprecated
        w.wait(params)
      end

      # @api private
      # @deprecated
      def waiter_names
        waiters.keys
      end

      private

      # @param [Symbol] waiter_name
      # @param [Hash] options ({})
      def waiter(waiter_name, options = {})
        waiter_class = waiters[waiter_name]
        if waiter_class
          waiter_class.new(options.merge(client: self))
        else
          raise Aws::Waiters::Errors::NoSuchWaiterError.new(waiter_name, waiters.keys)
        end
      end

      def waiters
        {
          alarm_exists: Waiters::AlarmExists
        }
      end

      # @api private
      class << self

        # @api private
        attr_reader :identifier

        def errors_module
          Errors
        end

      end
    end
  end
end

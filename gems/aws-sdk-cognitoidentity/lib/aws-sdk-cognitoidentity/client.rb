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
require 'aws-sdk-core/plugins/protocols/json_rpc.rb'

Aws::Plugins::GlobalConfiguration::IDENTIFIERS << :cognitoidentity

module Aws
  module CognitoIdentity
    class Client < Seahorse::Client::Base

      include Aws::ClientStubs

      @identifier = :cognitoidentity

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
      add_plugin(Aws::Plugins::Protocols::JsonRpc)

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
      # @option options [Boolean] :simple_json (false)
      #   Disables request parameter conversion, validation, and formatting.
      #   Also disable response data type conversions. This option is useful
      #   when you want to ensure the highest level of performance by
      #   avoiding overhead of walking request parameters and response data
      #   structures.
      #
      #   When `:simple_json` is enabled, the request parameters hash must
      #   be formatted exactly as the DynamoDB API expects.
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

      # Creates a new identity pool. The identity pool is a store of user
      # identity information that is specific to your AWS account. The limit
      # on identity pools is 60 per account. The keys for
      # `SupportedLoginProviders` are as follows: * Facebook:
      # `graph.facebook.com`
      # * Google: `accounts.google.com`
      # * Amazon: `www.amazon.com`
      # * Twitter: `api.twitter.com`
      # * Digits: `www.digits.com`
      #
      #  You must use AWS Developer credentials to call this API.
      # @option params [required, String] :identity_pool_name
      #   A string that you provide.
      # @option params [required, Boolean] :allow_unauthenticated_identities
      #   TRUE if the identity pool supports unauthenticated logins.
      # @option params [Hash<String,String>] :supported_login_providers
      #   Optional key:value pairs mapping provider names to provider app IDs.
      # @option params [String] :developer_provider_name
      #   The "domain" by which Cognito will refer to your users. This name
      #   acts as a placeholder that allows your backend and the Cognito service
      #   to communicate about the developer provider. For the
      #   `DeveloperProviderName`, you can use letters as well as period (`.`),
      #   underscore (`_`), and dash (`-`).
      #
      #   Once you have set a developer provider name, you cannot change it.
      #   Please take care in setting this parameter.
      # @option params [Array<String>] :open_id_connect_provider_arns
      #   A list of OpendID Connect provider ARNs.
      # @option params [Array<Types::CognitoIdentityProvider>] :cognito_identity_providers
      #   An array of Amazon Cognito Identity user pools.
      # @option params [Array<String>] :saml_provider_arns
      #   An array of Amazon Resource Names (ARNs) of the SAML provider for your
      #   identity pool.
      # @return [Types::IdentityPool] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::IdentityPool#identity_pool_id #IdentityPoolId} => String
      #   * {Types::IdentityPool#identity_pool_name #IdentityPoolName} => String
      #   * {Types::IdentityPool#allow_unauthenticated_identities #AllowUnauthenticatedIdentities} => Boolean
      #   * {Types::IdentityPool#supported_login_providers #SupportedLoginProviders} => Hash&lt;String,String&gt;
      #   * {Types::IdentityPool#developer_provider_name #DeveloperProviderName} => String
      #   * {Types::IdentityPool#open_id_connect_provider_arns #OpenIdConnectProviderARNs} => Array&lt;String&gt;
      #   * {Types::IdentityPool#cognito_identity_providers #CognitoIdentityProviders} => Array&lt;Types::CognitoIdentityProvider&gt;
      #   * {Types::IdentityPool#saml_provider_arns #SamlProviderARNs} => Array&lt;String&gt;
      #
      # @example Request syntax with placeholder values
      #   resp = client.create_identity_pool({
      #     identity_pool_name: "IdentityPoolName", # required
      #     allow_unauthenticated_identities: false, # required
      #     supported_login_providers: {
      #       "IdentityProviderName" => "IdentityProviderId",
      #     },
      #     developer_provider_name: "DeveloperProviderName",
      #     open_id_connect_provider_arns: ["ARNString"],
      #     cognito_identity_providers: [
      #       {
      #         provider_name: "CognitoIdentityProviderName",
      #         client_id: "CognitoIdentityProviderClientId",
      #       },
      #     ],
      #     saml_provider_arns: ["ARNString"],
      #   })
      #
      # @example Response structure
      #   resp.identity_pool_id #=> String
      #   resp.identity_pool_name #=> String
      #   resp.allow_unauthenticated_identities #=> Boolean
      #   resp.supported_login_providers #=> Hash
      #   resp.supported_login_providers["IdentityProviderName"] #=> String
      #   resp.developer_provider_name #=> String
      #   resp.open_id_connect_provider_arns #=> Array
      #   resp.open_id_connect_provider_arns[0] #=> String
      #   resp.cognito_identity_providers #=> Array
      #   resp.cognito_identity_providers[0].provider_name #=> String
      #   resp.cognito_identity_providers[0].client_id #=> String
      #   resp.saml_provider_arns #=> Array
      #   resp.saml_provider_arns[0] #=> String
      # @overload create_identity_pool(params = {})
      # @param [Hash] params ({})
      def create_identity_pool(params = {}, options = {})
        req = build_request(:create_identity_pool, params)
        req.send_request(options)
      end

      # Deletes identities from an identity pool. You can specify a list of
      # 1-60 identities that you want to delete.
      #
      # You must use AWS Developer credentials to call this API.
      # @option params [required, Array<String>] :identity_ids_to_delete
      #   A list of 1-60 identities that you want to delete.
      # @return [Types::DeleteIdentitiesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::DeleteIdentitiesResponse#unprocessed_identity_ids #UnprocessedIdentityIds} => Array&lt;Types::UnprocessedIdentityId&gt;
      #
      # @example Request syntax with placeholder values
      #   resp = client.delete_identities({
      #     identity_ids_to_delete: ["IdentityId"], # required
      #   })
      #
      # @example Response structure
      #   resp.unprocessed_identity_ids #=> Array
      #   resp.unprocessed_identity_ids[0].identity_id #=> String
      #   resp.unprocessed_identity_ids[0].error_code #=> String, one of "AccessDenied", "InternalServerError"
      # @overload delete_identities(params = {})
      # @param [Hash] params ({})
      def delete_identities(params = {}, options = {})
        req = build_request(:delete_identities, params)
        req.send_request(options)
      end

      # Deletes a user pool. Once a pool is deleted, users will not be able to
      # authenticate with the pool.
      #
      # You must use AWS Developer credentials to call this API.
      # @option params [required, String] :identity_pool_id
      #   An identity pool ID in the format REGION:GUID.
      # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
      #
      # @example Request syntax with placeholder values
      #   resp = client.delete_identity_pool({
      #     identity_pool_id: "IdentityPoolId", # required
      #   })
      # @overload delete_identity_pool(params = {})
      # @param [Hash] params ({})
      def delete_identity_pool(params = {}, options = {})
        req = build_request(:delete_identity_pool, params)
        req.send_request(options)
      end

      # Returns metadata related to the given identity, including when the
      # identity was created and any associated linked logins.
      #
      # You must use AWS Developer credentials to call this API.
      # @option params [required, String] :identity_id
      #   A unique identifier in the format REGION:GUID.
      # @return [Types::IdentityDescription] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::IdentityDescription#identity_id #IdentityId} => String
      #   * {Types::IdentityDescription#logins #Logins} => Array&lt;String&gt;
      #   * {Types::IdentityDescription#creation_date #CreationDate} => Time
      #   * {Types::IdentityDescription#last_modified_date #LastModifiedDate} => Time
      #
      # @example Request syntax with placeholder values
      #   resp = client.describe_identity({
      #     identity_id: "IdentityId", # required
      #   })
      #
      # @example Response structure
      #   resp.identity_id #=> String
      #   resp.logins #=> Array
      #   resp.logins[0] #=> String
      #   resp.creation_date #=> Time
      #   resp.last_modified_date #=> Time
      # @overload describe_identity(params = {})
      # @param [Hash] params ({})
      def describe_identity(params = {}, options = {})
        req = build_request(:describe_identity, params)
        req.send_request(options)
      end

      # Gets details about a particular identity pool, including the pool
      # name, ID description, creation date, and current number of users.
      #
      # You must use AWS Developer credentials to call this API.
      # @option params [required, String] :identity_pool_id
      #   An identity pool ID in the format REGION:GUID.
      # @return [Types::IdentityPool] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::IdentityPool#identity_pool_id #IdentityPoolId} => String
      #   * {Types::IdentityPool#identity_pool_name #IdentityPoolName} => String
      #   * {Types::IdentityPool#allow_unauthenticated_identities #AllowUnauthenticatedIdentities} => Boolean
      #   * {Types::IdentityPool#supported_login_providers #SupportedLoginProviders} => Hash&lt;String,String&gt;
      #   * {Types::IdentityPool#developer_provider_name #DeveloperProviderName} => String
      #   * {Types::IdentityPool#open_id_connect_provider_arns #OpenIdConnectProviderARNs} => Array&lt;String&gt;
      #   * {Types::IdentityPool#cognito_identity_providers #CognitoIdentityProviders} => Array&lt;Types::CognitoIdentityProvider&gt;
      #   * {Types::IdentityPool#saml_provider_arns #SamlProviderARNs} => Array&lt;String&gt;
      #
      # @example Request syntax with placeholder values
      #   resp = client.describe_identity_pool({
      #     identity_pool_id: "IdentityPoolId", # required
      #   })
      #
      # @example Response structure
      #   resp.identity_pool_id #=> String
      #   resp.identity_pool_name #=> String
      #   resp.allow_unauthenticated_identities #=> Boolean
      #   resp.supported_login_providers #=> Hash
      #   resp.supported_login_providers["IdentityProviderName"] #=> String
      #   resp.developer_provider_name #=> String
      #   resp.open_id_connect_provider_arns #=> Array
      #   resp.open_id_connect_provider_arns[0] #=> String
      #   resp.cognito_identity_providers #=> Array
      #   resp.cognito_identity_providers[0].provider_name #=> String
      #   resp.cognito_identity_providers[0].client_id #=> String
      #   resp.saml_provider_arns #=> Array
      #   resp.saml_provider_arns[0] #=> String
      # @overload describe_identity_pool(params = {})
      # @param [Hash] params ({})
      def describe_identity_pool(params = {}, options = {})
        req = build_request(:describe_identity_pool, params)
        req.send_request(options)
      end

      # Returns credentials for the provided identity ID. Any provided logins
      # will be validated against supported login providers. If the token is
      # for cognito-identity.amazonaws.com, it will be passed through to AWS
      # Security Token Service with the appropriate role for the token.
      #
      # This is a public API. You do not need any credentials to call this
      # API.
      # @option params [required, String] :identity_id
      #   A unique identifier in the format REGION:GUID.
      # @option params [Hash<String,String>] :logins
      #   A set of optional name-value pairs that map provider names to provider
      #   tokens.
      # @option params [String] :custom_role_arn
      #   The Amazon Resource Name (ARN) of the role to be assumed when multiple
      #   roles were received in the token from the identity provider. For
      #   example, a SAML-based identity provider. This parameter is optional
      #   for identity providers that do not support role customization.
      # @return [Types::GetCredentialsForIdentityResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::GetCredentialsForIdentityResponse#identity_id #IdentityId} => String
      #   * {Types::GetCredentialsForIdentityResponse#credentials #Credentials} => Types::Credentials
      #
      # @example Request syntax with placeholder values
      #   resp = client.get_credentials_for_identity({
      #     identity_id: "IdentityId", # required
      #     logins: {
      #       "IdentityProviderName" => "IdentityProviderToken",
      #     },
      #     custom_role_arn: "ARNString",
      #   })
      #
      # @example Response structure
      #   resp.identity_id #=> String
      #   resp.credentials.access_key_id #=> String
      #   resp.credentials.secret_key #=> String
      #   resp.credentials.session_token #=> String
      #   resp.credentials.expiration #=> Time
      # @overload get_credentials_for_identity(params = {})
      # @param [Hash] params ({})
      def get_credentials_for_identity(params = {}, options = {})
        req = build_request(:get_credentials_for_identity, params)
        req.send_request(options)
      end

      # Generates (or retrieves) a Cognito ID. Supplying multiple logins will
      # create an implicit linked account.
      #
      # This is a public API. You do not need any credentials to call this
      # API.
      # @option params [String] :account_id
      #   A standard AWS account ID (9+ digits).
      # @option params [required, String] :identity_pool_id
      #   An identity pool ID in the format REGION:GUID.
      # @option params [Hash<String,String>] :logins
      #   A set of optional name-value pairs that map provider names to provider
      #   tokens.
      #
      #   The available provider names for `Logins` are as follows: * Facebook:
      #   `graph.facebook.com`
      #   * Google: `accounts.google.com`
      #   * Amazon: `www.amazon.com`
      #   * Twitter: `api.twitter.com`
      #   * Digits: `www.digits.com`
      # @return [Types::GetIdResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::GetIdResponse#identity_id #IdentityId} => String
      #
      # @example Request syntax with placeholder values
      #   resp = client.get_id({
      #     account_id: "AccountId",
      #     identity_pool_id: "IdentityPoolId", # required
      #     logins: {
      #       "IdentityProviderName" => "IdentityProviderToken",
      #     },
      #   })
      #
      # @example Response structure
      #   resp.identity_id #=> String
      # @overload get_id(params = {})
      # @param [Hash] params ({})
      def get_id(params = {}, options = {})
        req = build_request(:get_id, params)
        req.send_request(options)
      end

      # Gets the roles for an identity pool.
      #
      # You must use AWS Developer credentials to call this API.
      # @option params [required, String] :identity_pool_id
      #   An identity pool ID in the format REGION:GUID.
      # @return [Types::GetIdentityPoolRolesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::GetIdentityPoolRolesResponse#identity_pool_id #IdentityPoolId} => String
      #   * {Types::GetIdentityPoolRolesResponse#roles #Roles} => Hash&lt;String,String&gt;
      #
      # @example Request syntax with placeholder values
      #   resp = client.get_identity_pool_roles({
      #     identity_pool_id: "IdentityPoolId", # required
      #   })
      #
      # @example Response structure
      #   resp.identity_pool_id #=> String
      #   resp.roles #=> Hash
      #   resp.roles["RoleType"] #=> String
      # @overload get_identity_pool_roles(params = {})
      # @param [Hash] params ({})
      def get_identity_pool_roles(params = {}, options = {})
        req = build_request(:get_identity_pool_roles, params)
        req.send_request(options)
      end

      # Gets an OpenID token, using a known Cognito ID. This known Cognito ID
      # is returned by GetId. You can optionally add additional logins for the
      # identity. Supplying multiple logins creates an implicit link.
      #
      # The OpenId token is valid for 15 minutes.
      #
      # This is a public API. You do not need any credentials to call this
      # API.
      # @option params [required, String] :identity_id
      #   A unique identifier in the format REGION:GUID.
      # @option params [Hash<String,String>] :logins
      #   A set of optional name-value pairs that map provider names to provider
      #   tokens. When using graph.facebook.com and www.amazon.com, supply the
      #   access\_token returned from the provider's authflow. For
      #   accounts.google.com or any other OpenId Connect provider, always
      #   include the id\_token.
      # @return [Types::GetOpenIdTokenResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::GetOpenIdTokenResponse#identity_id #IdentityId} => String
      #   * {Types::GetOpenIdTokenResponse#token #Token} => String
      #
      # @example Request syntax with placeholder values
      #   resp = client.get_open_id_token({
      #     identity_id: "IdentityId", # required
      #     logins: {
      #       "IdentityProviderName" => "IdentityProviderToken",
      #     },
      #   })
      #
      # @example Response structure
      #   resp.identity_id #=> String
      #   resp.token #=> String
      # @overload get_open_id_token(params = {})
      # @param [Hash] params ({})
      def get_open_id_token(params = {}, options = {})
        req = build_request(:get_open_id_token, params)
        req.send_request(options)
      end

      # Registers (or retrieves) a Cognito `IdentityId` and an OpenID Connect
      # token for a user authenticated by your backend authentication process.
      # Supplying multiple logins will create an implicit linked account. You
      # can only specify one developer provider as part of the `Logins` map,
      # which is linked to the identity pool. The developer provider is the
      # "domain" by which Cognito will refer to your users.
      #
      # You can use `GetOpenIdTokenForDeveloperIdentity` to create a new
      # identity and to link new logins (that is, user credentials issued by a
      # public provider or developer provider) to an existing identity. When
      # you want to create a new identity, the `IdentityId` should be null.
      # When you want to associate a new login with an existing
      # authenticated/unauthenticated identity, you can do so by providing the
      # existing `IdentityId`. This API will create the identity in the
      # specified `IdentityPoolId`.
      #
      # You must use AWS Developer credentials to call this API.
      # @option params [required, String] :identity_pool_id
      #   An identity pool ID in the format REGION:GUID.
      # @option params [String] :identity_id
      #   A unique identifier in the format REGION:GUID.
      # @option params [required, Hash<String,String>] :logins
      #   A set of optional name-value pairs that map provider names to provider
      #   tokens. Each name-value pair represents a user from a public provider
      #   or developer provider. If the user is from a developer provider, the
      #   name-value pair will follow the syntax `"developer_provider_name":
      #   "developer_user_identifier"`. The developer provider is the "domain"
      #   by which Cognito will refer to your users; you provided this domain
      #   while creating/updating the identity pool. The developer user
      #   identifier is an identifier from your backend that uniquely identifies
      #   a user. When you create an identity pool, you can specify the
      #   supported logins.
      # @option params [Integer] :token_duration
      #   The expiration time of the token, in seconds. You can specify a custom
      #   expiration time for the token so that you can cache it. If you don't
      #   provide an expiration time, the token is valid for 15 minutes. You can
      #   exchange the token with Amazon STS for temporary AWS credentials,
      #   which are valid for a maximum of one hour. The maximum token duration
      #   you can set is 24 hours. You should take care in setting the
      #   expiration time for a token, as there are significant security
      #   implications: an attacker could use a leaked token to access your AWS
      #   resources for the token's duration.
      # @return [Types::GetOpenIdTokenForDeveloperIdentityResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::GetOpenIdTokenForDeveloperIdentityResponse#identity_id #IdentityId} => String
      #   * {Types::GetOpenIdTokenForDeveloperIdentityResponse#token #Token} => String
      #
      # @example Request syntax with placeholder values
      #   resp = client.get_open_id_token_for_developer_identity({
      #     identity_pool_id: "IdentityPoolId", # required
      #     identity_id: "IdentityId",
      #     logins: { # required
      #       "IdentityProviderName" => "IdentityProviderToken",
      #     },
      #     token_duration: 1,
      #   })
      #
      # @example Response structure
      #   resp.identity_id #=> String
      #   resp.token #=> String
      # @overload get_open_id_token_for_developer_identity(params = {})
      # @param [Hash] params ({})
      def get_open_id_token_for_developer_identity(params = {}, options = {})
        req = build_request(:get_open_id_token_for_developer_identity, params)
        req.send_request(options)
      end

      # Lists the identities in a pool.
      #
      # You must use AWS Developer credentials to call this API.
      # @option params [required, String] :identity_pool_id
      #   An identity pool ID in the format REGION:GUID.
      # @option params [required, Integer] :max_results
      #   The maximum number of identities to return.
      # @option params [String] :next_token
      #   A pagination token.
      # @option params [Boolean] :hide_disabled
      #   An optional boolean parameter that allows you to hide disabled
      #   identities. If omitted, the ListIdentities API will include disabled
      #   identities in the response.
      # @return [Types::ListIdentitiesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::ListIdentitiesResponse#identity_pool_id #IdentityPoolId} => String
      #   * {Types::ListIdentitiesResponse#identities #Identities} => Array&lt;Types::IdentityDescription&gt;
      #   * {Types::ListIdentitiesResponse#next_token #NextToken} => String
      #
      # @example Request syntax with placeholder values
      #   resp = client.list_identities({
      #     identity_pool_id: "IdentityPoolId", # required
      #     max_results: 1, # required
      #     next_token: "PaginationKey",
      #     hide_disabled: false,
      #   })
      #
      # @example Response structure
      #   resp.identity_pool_id #=> String
      #   resp.identities #=> Array
      #   resp.identities[0].identity_id #=> String
      #   resp.identities[0].logins #=> Array
      #   resp.identities[0].logins[0] #=> String
      #   resp.identities[0].creation_date #=> Time
      #   resp.identities[0].last_modified_date #=> Time
      #   resp.next_token #=> String
      # @overload list_identities(params = {})
      # @param [Hash] params ({})
      def list_identities(params = {}, options = {})
        req = build_request(:list_identities, params)
        req.send_request(options)
      end

      # Lists all of the Cognito identity pools registered for your account.
      #
      # You must use AWS Developer credentials to call this API.
      # @option params [required, Integer] :max_results
      #   The maximum number of identities to return.
      # @option params [String] :next_token
      #   A pagination token.
      # @return [Types::ListIdentityPoolsResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::ListIdentityPoolsResponse#identity_pools #IdentityPools} => Array&lt;Types::IdentityPoolShortDescription&gt;
      #   * {Types::ListIdentityPoolsResponse#next_token #NextToken} => String
      #
      # @example Request syntax with placeholder values
      #   resp = client.list_identity_pools({
      #     max_results: 1, # required
      #     next_token: "PaginationKey",
      #   })
      #
      # @example Response structure
      #   resp.identity_pools #=> Array
      #   resp.identity_pools[0].identity_pool_id #=> String
      #   resp.identity_pools[0].identity_pool_name #=> String
      #   resp.next_token #=> String
      # @overload list_identity_pools(params = {})
      # @param [Hash] params ({})
      def list_identity_pools(params = {}, options = {})
        req = build_request(:list_identity_pools, params)
        req.send_request(options)
      end

      # Retrieves the `IdentityID` associated with a `DeveloperUserIdentifier`
      # or the list of `DeveloperUserIdentifier`s associated with an
      # `IdentityId` for an existing identity. Either `IdentityID` or
      # `DeveloperUserIdentifier` must not be null. If you supply only one of
      # these values, the other value will be searched in the database and
      # returned as a part of the response. If you supply both,
      # `DeveloperUserIdentifier` will be matched against `IdentityID`. If the
      # values are verified against the database, the response returns both
      # values and is the same as the request. Otherwise a
      # `ResourceConflictException` is thrown.
      #
      # You must use AWS Developer credentials to call this API.
      # @option params [required, String] :identity_pool_id
      #   An identity pool ID in the format REGION:GUID.
      # @option params [String] :identity_id
      #   A unique identifier in the format REGION:GUID.
      # @option params [String] :developer_user_identifier
      #   A unique ID used by your backend authentication process to identify a
      #   user. Typically, a developer identity provider would issue many
      #   developer user identifiers, in keeping with the number of users.
      # @option params [Integer] :max_results
      #   The maximum number of identities to return.
      # @option params [String] :next_token
      #   A pagination token. The first call you make will have `NextToken` set
      #   to null. After that the service will return `NextToken` values as
      #   needed. For example, let's say you make a request with `MaxResults`
      #   set to 10, and there are 20 matches in the database. The service will
      #   return a pagination token as a part of the response. This token can be
      #   used to call the API again and get results starting from the 11th
      #   match.
      # @return [Types::LookupDeveloperIdentityResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::LookupDeveloperIdentityResponse#identity_id #IdentityId} => String
      #   * {Types::LookupDeveloperIdentityResponse#developer_user_identifier_list #DeveloperUserIdentifierList} => Array&lt;String&gt;
      #   * {Types::LookupDeveloperIdentityResponse#next_token #NextToken} => String
      #
      # @example Request syntax with placeholder values
      #   resp = client.lookup_developer_identity({
      #     identity_pool_id: "IdentityPoolId", # required
      #     identity_id: "IdentityId",
      #     developer_user_identifier: "DeveloperUserIdentifier",
      #     max_results: 1,
      #     next_token: "PaginationKey",
      #   })
      #
      # @example Response structure
      #   resp.identity_id #=> String
      #   resp.developer_user_identifier_list #=> Array
      #   resp.developer_user_identifier_list[0] #=> String
      #   resp.next_token #=> String
      # @overload lookup_developer_identity(params = {})
      # @param [Hash] params ({})
      def lookup_developer_identity(params = {}, options = {})
        req = build_request(:lookup_developer_identity, params)
        req.send_request(options)
      end

      # Merges two users having different `IdentityId`s, existing in the same
      # identity pool, and identified by the same developer provider. You can
      # use this action to request that discrete users be merged and
      # identified as a single user in the Cognito environment. Cognito
      # associates the given source user (`SourceUserIdentifier`) with the
      # `IdentityId` of the `DestinationUserIdentifier`. Only
      # developer-authenticated users can be merged. If the users to be merged
      # are associated with the same public provider, but as two different
      # users, an exception will be thrown.
      #
      # You must use AWS Developer credentials to call this API.
      # @option params [required, String] :source_user_identifier
      #   User identifier for the source user. The value should be a
      #   `DeveloperUserIdentifier`.
      # @option params [required, String] :destination_user_identifier
      #   User identifier for the destination user. The value should be a
      #   `DeveloperUserIdentifier`.
      # @option params [required, String] :developer_provider_name
      #   The "domain" by which Cognito will refer to your users. This is a
      #   (pseudo) domain name that you provide while creating an identity pool.
      #   This name acts as a placeholder that allows your backend and the
      #   Cognito service to communicate about the developer provider. For the
      #   `DeveloperProviderName`, you can use letters as well as period (.),
      #   underscore (\_), and dash (-).
      # @option params [required, String] :identity_pool_id
      #   An identity pool ID in the format REGION:GUID.
      # @return [Types::MergeDeveloperIdentitiesResponse] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::MergeDeveloperIdentitiesResponse#identity_id #IdentityId} => String
      #
      # @example Request syntax with placeholder values
      #   resp = client.merge_developer_identities({
      #     source_user_identifier: "DeveloperUserIdentifier", # required
      #     destination_user_identifier: "DeveloperUserIdentifier", # required
      #     developer_provider_name: "DeveloperProviderName", # required
      #     identity_pool_id: "IdentityPoolId", # required
      #   })
      #
      # @example Response structure
      #   resp.identity_id #=> String
      # @overload merge_developer_identities(params = {})
      # @param [Hash] params ({})
      def merge_developer_identities(params = {}, options = {})
        req = build_request(:merge_developer_identities, params)
        req.send_request(options)
      end

      # Sets the roles for an identity pool. These roles are used when making
      # calls to `GetCredentialsForIdentity` action.
      #
      # You must use AWS Developer credentials to call this API.
      # @option params [required, String] :identity_pool_id
      #   An identity pool ID in the format REGION:GUID.
      # @option params [required, Hash<String,String>] :roles
      #   The map of roles associated with this pool. For a given role, the key
      #   will be either "authenticated" or "unauthenticated" and the value
      #   will be the Role ARN.
      # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
      #
      # @example Request syntax with placeholder values
      #   resp = client.set_identity_pool_roles({
      #     identity_pool_id: "IdentityPoolId", # required
      #     roles: { # required
      #       "RoleType" => "ARNString",
      #     },
      #   })
      # @overload set_identity_pool_roles(params = {})
      # @param [Hash] params ({})
      def set_identity_pool_roles(params = {}, options = {})
        req = build_request(:set_identity_pool_roles, params)
        req.send_request(options)
      end

      # Unlinks a `DeveloperUserIdentifier` from an existing identity.
      # Unlinked developer users will be considered new identities next time
      # they are seen. If, for a given Cognito identity, you remove all
      # federated identities as well as the developer user identifier, the
      # Cognito identity becomes inaccessible.
      #
      # You must use AWS Developer credentials to call this API.
      # @option params [required, String] :identity_id
      #   A unique identifier in the format REGION:GUID.
      # @option params [required, String] :identity_pool_id
      #   An identity pool ID in the format REGION:GUID.
      # @option params [required, String] :developer_provider_name
      #   The "domain" by which Cognito will refer to your users.
      # @option params [required, String] :developer_user_identifier
      #   A unique ID used by your backend authentication process to identify a
      #   user.
      # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
      #
      # @example Request syntax with placeholder values
      #   resp = client.unlink_developer_identity({
      #     identity_id: "IdentityId", # required
      #     identity_pool_id: "IdentityPoolId", # required
      #     developer_provider_name: "DeveloperProviderName", # required
      #     developer_user_identifier: "DeveloperUserIdentifier", # required
      #   })
      # @overload unlink_developer_identity(params = {})
      # @param [Hash] params ({})
      def unlink_developer_identity(params = {}, options = {})
        req = build_request(:unlink_developer_identity, params)
        req.send_request(options)
      end

      # Unlinks a federated identity from an existing account. Unlinked logins
      # will be considered new identities next time they are seen. Removing
      # the last linked login will make this identity inaccessible.
      #
      # This is a public API. You do not need any credentials to call this
      # API.
      # @option params [required, String] :identity_id
      #   A unique identifier in the format REGION:GUID.
      # @option params [required, Hash<String,String>] :logins
      #   A set of optional name-value pairs that map provider names to provider
      #   tokens.
      # @option params [required, Array<String>] :logins_to_remove
      #   Provider names to unlink from this identity.
      # @return [Struct] Returns an empty {Seahorse::Client::Response response}.
      #
      # @example Request syntax with placeholder values
      #   resp = client.unlink_identity({
      #     identity_id: "IdentityId", # required
      #     logins: { # required
      #       "IdentityProviderName" => "IdentityProviderToken",
      #     },
      #     logins_to_remove: ["IdentityProviderName"], # required
      #   })
      # @overload unlink_identity(params = {})
      # @param [Hash] params ({})
      def unlink_identity(params = {}, options = {})
        req = build_request(:unlink_identity, params)
        req.send_request(options)
      end

      # Updates a user pool.
      #
      # You must use AWS Developer credentials to call this API.
      # @option params [required, String] :identity_pool_id
      #   An identity pool ID in the format REGION:GUID.
      # @option params [required, String] :identity_pool_name
      #   A string that you provide.
      # @option params [required, Boolean] :allow_unauthenticated_identities
      #   TRUE if the identity pool supports unauthenticated logins.
      # @option params [Hash<String,String>] :supported_login_providers
      #   Optional key:value pairs mapping provider names to provider app IDs.
      # @option params [String] :developer_provider_name
      #   The "domain" by which Cognito will refer to your users.
      # @option params [Array<String>] :open_id_connect_provider_arns
      #   A list of OpendID Connect provider ARNs.
      # @option params [Array<Types::CognitoIdentityProvider>] :cognito_identity_providers
      #   A list representing an Amazon Cognito Identity User Pool and its
      #   client ID.
      # @option params [Array<String>] :saml_provider_arns
      #   An array of Amazon Resource Names (ARNs) of the SAML provider for your
      #   identity pool.
      # @return [Types::IdentityPool] Returns a {Seahorse::Client::Response response} object which responds to the following methods:
      #
      #   * {Types::IdentityPool#identity_pool_id #IdentityPoolId} => String
      #   * {Types::IdentityPool#identity_pool_name #IdentityPoolName} => String
      #   * {Types::IdentityPool#allow_unauthenticated_identities #AllowUnauthenticatedIdentities} => Boolean
      #   * {Types::IdentityPool#supported_login_providers #SupportedLoginProviders} => Hash&lt;String,String&gt;
      #   * {Types::IdentityPool#developer_provider_name #DeveloperProviderName} => String
      #   * {Types::IdentityPool#open_id_connect_provider_arns #OpenIdConnectProviderARNs} => Array&lt;String&gt;
      #   * {Types::IdentityPool#cognito_identity_providers #CognitoIdentityProviders} => Array&lt;Types::CognitoIdentityProvider&gt;
      #   * {Types::IdentityPool#saml_provider_arns #SamlProviderARNs} => Array&lt;String&gt;
      #
      # @example Request syntax with placeholder values
      #   resp = client.update_identity_pool({
      #     identity_pool_id: "IdentityPoolId", # required
      #     identity_pool_name: "IdentityPoolName", # required
      #     allow_unauthenticated_identities: false, # required
      #     supported_login_providers: {
      #       "IdentityProviderName" => "IdentityProviderId",
      #     },
      #     developer_provider_name: "DeveloperProviderName",
      #     open_id_connect_provider_arns: ["ARNString"],
      #     cognito_identity_providers: [
      #       {
      #         provider_name: "CognitoIdentityProviderName",
      #         client_id: "CognitoIdentityProviderClientId",
      #       },
      #     ],
      #     saml_provider_arns: ["ARNString"],
      #   })
      #
      # @example Response structure
      #   resp.identity_pool_id #=> String
      #   resp.identity_pool_name #=> String
      #   resp.allow_unauthenticated_identities #=> Boolean
      #   resp.supported_login_providers #=> Hash
      #   resp.supported_login_providers["IdentityProviderName"] #=> String
      #   resp.developer_provider_name #=> String
      #   resp.open_id_connect_provider_arns #=> Array
      #   resp.open_id_connect_provider_arns[0] #=> String
      #   resp.cognito_identity_providers #=> Array
      #   resp.cognito_identity_providers[0].provider_name #=> String
      #   resp.cognito_identity_providers[0].client_id #=> String
      #   resp.saml_provider_arns #=> Array
      #   resp.saml_provider_arns[0] #=> String
      # @overload update_identity_pool(params = {})
      # @param [Hash] params ({})
      def update_identity_pool(params = {}, options = {})
        req = build_request(:update_identity_pool, params)
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
      #    # polls in a loop, sleeping between attempts
      #    client.waiter_until(waiter_name, params)
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
      # {Aws::Waiters::Errors::WaiterFailed}**.
      #
      #     begin
      #       client.wait_until(...)
      #     rescue Aws::Waiters::Errors::WaiterFailed
      #       # resource did not enter the desired state in time
      #     end
      #
      # @param [Symbol] waiter_name The name of the waiter.
      #   Must be one of the following:
      #
      #
      #
      # @param [Hash] params A hash of request parameters to send to the
      #   operation. The following list links to the operation called by
      #   the named waiter.
      #
      #
      #
      # @yieldparam [Waiters::Waiter] waiter Yields a {Waiters::Waiter Waiter}
      #   object that can be configured prior to waiting.
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
        {}
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

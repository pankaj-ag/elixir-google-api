# Copyright 2017 Google Inc.
#
# Licensed under the Apache License, Version 2.0 (the &quot;License&quot;);
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an &quot;AS IS&quot; BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule GoogleApi.Games.V1.Api.Events do
  @moduledoc """
  API calls for all endpoints tagged `Events`.
  """

  alias GoogleApi.Games.V1.Connection
  alias GoogleApi.Gax.{Request, Response}

  @doc """
  Returns a list showing the current progress on events in this application for the currently authenticated user.

  ## Parameters

  - connection (GoogleApi.Games.V1.Connection): Connection to server
  - opts (KeywordList): [optional] Optional parameters
    - :alt (String.t): Data format for the response.
    - :fields (String.t): Selector specifying which fields to include in a partial response.
    - :key (String.t): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String.t): OAuth 2.0 token for the current user.
    - :prettyPrint (boolean()): Returns response with indentations and line breaks.
    - :quotaUser (String.t): An opaque string that represents a user for quota purposes. Must not exceed 40 characters.
    - :userIp (String.t): Deprecated. Please use quotaUser instead.
    - :language (String.t): The preferred language to use for strings returned by this method.
    - :maxResults (integer()): The maximum number of events to return in the response, used for paging. For any response, the actual number of events to return may be less than the specified maxResults.
    - :pageToken (String.t): The token returned by the previous request.

  ## Returns

  {:ok, %GoogleApi.Games.V1.Model.PlayerEventListResponse{}} on success
  {:error, info} on failure
  """
  @spec games_events_list_by_player(Tesla.Env.client(), keyword()) ::
          {:ok, GoogleApi.Games.V1.Model.PlayerEventListResponse.t()} | {:error, Tesla.Env.t()}
  def games_events_list_by_player(connection, opts \\ []) do
    optional_params = %{
      :alt => :query,
      :fields => :query,
      :key => :query,
      :oauth_token => :query,
      :prettyPrint => :query,
      :quotaUser => :query,
      :userIp => :query,
      :language => :query,
      :maxResults => :query,
      :pageToken => :query
    }

    request =
      Request.new()
      |> Request.method(:get)
      |> Request.url("/events")
      |> Request.add_optional_params(optional_params, opts)

    connection
    |> Connection.execute(request)
    |> Response.decode(struct: %GoogleApi.Games.V1.Model.PlayerEventListResponse{})
  end

  @doc """
  Returns a list of the event definitions in this application.

  ## Parameters

  - connection (GoogleApi.Games.V1.Connection): Connection to server
  - opts (KeywordList): [optional] Optional parameters
    - :alt (String.t): Data format for the response.
    - :fields (String.t): Selector specifying which fields to include in a partial response.
    - :key (String.t): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String.t): OAuth 2.0 token for the current user.
    - :prettyPrint (boolean()): Returns response with indentations and line breaks.
    - :quotaUser (String.t): An opaque string that represents a user for quota purposes. Must not exceed 40 characters.
    - :userIp (String.t): Deprecated. Please use quotaUser instead.
    - :language (String.t): The preferred language to use for strings returned by this method.
    - :maxResults (integer()): The maximum number of event definitions to return in the response, used for paging. For any response, the actual number of event definitions to return may be less than the specified maxResults.
    - :pageToken (String.t): The token returned by the previous request.

  ## Returns

  {:ok, %GoogleApi.Games.V1.Model.EventDefinitionListResponse{}} on success
  {:error, info} on failure
  """
  @spec games_events_list_definitions(Tesla.Env.client(), keyword()) ::
          {:ok, GoogleApi.Games.V1.Model.EventDefinitionListResponse.t()}
          | {:error, Tesla.Env.t()}
  def games_events_list_definitions(connection, opts \\ []) do
    optional_params = %{
      :alt => :query,
      :fields => :query,
      :key => :query,
      :oauth_token => :query,
      :prettyPrint => :query,
      :quotaUser => :query,
      :userIp => :query,
      :language => :query,
      :maxResults => :query,
      :pageToken => :query
    }

    request =
      Request.new()
      |> Request.method(:get)
      |> Request.url("/eventDefinitions")
      |> Request.add_optional_params(optional_params, opts)

    connection
    |> Connection.execute(request)
    |> Response.decode(struct: %GoogleApi.Games.V1.Model.EventDefinitionListResponse{})
  end

  @doc """
  Records a batch of changes to the number of times events have occurred for the currently authenticated user of this application.

  ## Parameters

  - connection (GoogleApi.Games.V1.Connection): Connection to server
  - opts (KeywordList): [optional] Optional parameters
    - :alt (String.t): Data format for the response.
    - :fields (String.t): Selector specifying which fields to include in a partial response.
    - :key (String.t): API key. Your API key identifies your project and provides you with API access, quota, and reports. Required unless you provide an OAuth 2.0 token.
    - :oauth_token (String.t): OAuth 2.0 token for the current user.
    - :prettyPrint (boolean()): Returns response with indentations and line breaks.
    - :quotaUser (String.t): An opaque string that represents a user for quota purposes. Must not exceed 40 characters.
    - :userIp (String.t): Deprecated. Please use quotaUser instead.
    - :language (String.t): The preferred language to use for strings returned by this method.
    - :body (EventRecordRequest): 

  ## Returns

  {:ok, %GoogleApi.Games.V1.Model.EventUpdateResponse{}} on success
  {:error, info} on failure
  """
  @spec games_events_record(Tesla.Env.client(), keyword()) ::
          {:ok, GoogleApi.Games.V1.Model.EventUpdateResponse.t()} | {:error, Tesla.Env.t()}
  def games_events_record(connection, opts \\ []) do
    optional_params = %{
      :alt => :query,
      :fields => :query,
      :key => :query,
      :oauth_token => :query,
      :prettyPrint => :query,
      :quotaUser => :query,
      :userIp => :query,
      :language => :query,
      :body => :body
    }

    request =
      Request.new()
      |> Request.method(:post)
      |> Request.url("/events")
      |> Request.add_optional_params(optional_params, opts)

    connection
    |> Connection.execute(request)
    |> Response.decode(struct: %GoogleApi.Games.V1.Model.EventUpdateResponse{})
  end
end

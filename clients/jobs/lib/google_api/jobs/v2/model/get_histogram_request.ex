# Copyright 2019 Google LLC
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

# NOTE: This class is auto generated by the elixir code generator program.
# Do not edit the class manually.

defmodule GoogleApi.Jobs.V2.Model.GetHistogramRequest do
  @moduledoc """
  Deprecated. Use SearchJobsRequest.histogram_facets instead to make
  a single call with both search and histogram.

  Input only.

  A request for the `GetHistogram` method.

  ## Attributes

  *   `allowBroadening` (*type:* `boolean()`, *default:* `nil`) - Optional. Controls whether to broaden the search to avoid too few results for a
      given query in instances where a search has sparse results. Results from a
      broadened query is a superset of the results from the original query.

      Defaults to false.
  *   `filters` (*type:* `GoogleApi.Jobs.V2.Model.JobFilters.t`, *default:* `nil`) - Deprecated. Use query instead.

      Optional.

      Restrictions on the scope of the histogram.
  *   `query` (*type:* `GoogleApi.Jobs.V2.Model.JobQuery.t`, *default:* `nil`) - Optional. Query used to search against jobs, such as keyword, location filters, etc.
  *   `requestMetadata` (*type:* `GoogleApi.Jobs.V2.Model.RequestMetadata.t`, *default:* `nil`) - Meta information, such as `user_id`, collected from the job searcher or
      other entity conducting a job search, is used to improve the service's
      search quality. Users determine identifier values, which must be
      unique and consist.
  *   `searchTypes` (*type:* `list(String.t)`, *default:* `nil`) - Required. A list of facets that specify the histogram data to be calculated
      against and returned.

      Histogram response times can be slow, and counts
      can be approximations. This call may be temporarily or permanently removed
      prior to the production release of Cloud Talent Solution.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :allowBroadening => boolean(),
          :filters => GoogleApi.Jobs.V2.Model.JobFilters.t(),
          :query => GoogleApi.Jobs.V2.Model.JobQuery.t(),
          :requestMetadata => GoogleApi.Jobs.V2.Model.RequestMetadata.t(),
          :searchTypes => list(String.t())
        }

  field(:allowBroadening)
  field(:filters, as: GoogleApi.Jobs.V2.Model.JobFilters)
  field(:query, as: GoogleApi.Jobs.V2.Model.JobQuery)
  field(:requestMetadata, as: GoogleApi.Jobs.V2.Model.RequestMetadata)
  field(:searchTypes, type: :list)
end

defimpl Poison.Decoder, for: GoogleApi.Jobs.V2.Model.GetHistogramRequest do
  def decode(value, options) do
    GoogleApi.Jobs.V2.Model.GetHistogramRequest.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Jobs.V2.Model.GetHistogramRequest do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end

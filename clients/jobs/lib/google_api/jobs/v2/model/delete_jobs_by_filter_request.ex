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

defmodule GoogleApi.Jobs.V2.Model.DeleteJobsByFilterRequest do
  @moduledoc """
  Deprecated. Use BatchDeleteJobsRequest instead.

  Input only.

  Delete job by filter request.

  The job typically becomes unsearchable within 10 seconds, but it may take
  up to 5 minutes.

  ## Attributes

  *   `disableFastProcess` (*type:* `boolean()`, *default:* `nil`) - Optional. If set to true, this call waits for all processing steps to complete
      before the job is cleaned up. Otherwise, the call returns while some
      steps are still taking place asynchronously, hence faster.
  *   `filter` (*type:* `GoogleApi.Jobs.V2.Model.Filter.t`, *default:* `nil`) - Required. Restrictions on the scope of the delete request.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :disableFastProcess => boolean(),
          :filter => GoogleApi.Jobs.V2.Model.Filter.t()
        }

  field(:disableFastProcess)
  field(:filter, as: GoogleApi.Jobs.V2.Model.Filter)
end

defimpl Poison.Decoder, for: GoogleApi.Jobs.V2.Model.DeleteJobsByFilterRequest do
  def decode(value, options) do
    GoogleApi.Jobs.V2.Model.DeleteJobsByFilterRequest.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Jobs.V2.Model.DeleteJobsByFilterRequest do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end

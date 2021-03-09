# Copyright 2019 Google LLC
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# NOTE: This file is auto generated by the elixir code generator program.
# Do not edit this file manually.

defmodule GoogleApi.TagManager.V2.Model.ListContainerVersionsResponse do
  @moduledoc """
  List container versions response.

  ## Attributes

  *   `containerVersionHeader` (*type:* `list(GoogleApi.TagManager.V2.Model.ContainerVersionHeader.t)`, *default:* `nil`) - All container version headers of a GTM Container.
  *   `nextPageToken` (*type:* `String.t`, *default:* `nil`) - Continuation token for fetching the next page of results.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :containerVersionHeader =>
            list(GoogleApi.TagManager.V2.Model.ContainerVersionHeader.t()) | nil,
          :nextPageToken => String.t() | nil
        }

  field(:containerVersionHeader,
    as: GoogleApi.TagManager.V2.Model.ContainerVersionHeader,
    type: :list
  )

  field(:nextPageToken)
end

defimpl Poison.Decoder, for: GoogleApi.TagManager.V2.Model.ListContainerVersionsResponse do
  def decode(value, options) do
    GoogleApi.TagManager.V2.Model.ListContainerVersionsResponse.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.TagManager.V2.Model.ListContainerVersionsResponse do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end

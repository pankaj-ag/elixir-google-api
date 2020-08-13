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

defmodule GoogleApi.Games.V1.Model.SnapshotListResponse do
  @moduledoc """
  A third party list snapshots response.

  ## Attributes

  *   `items` (*type:* `list(GoogleApi.Games.V1.Model.Snapshot.t)`, *default:* `nil`) - The snapshots.
  *   `kind` (*type:* `String.t`, *default:* `nil`) - Uniquely identifies the type of this resource. Value is always the fixed string `games#snapshotListResponse`.
  *   `nextPageToken` (*type:* `String.t`, *default:* `nil`) - Token corresponding to the next page of results. If there are no more results, the token is omitted.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :items => list(GoogleApi.Games.V1.Model.Snapshot.t()),
          :kind => String.t(),
          :nextPageToken => String.t()
        }

  field(:items, as: GoogleApi.Games.V1.Model.Snapshot, type: :list)
  field(:kind)
  field(:nextPageToken)
end

defimpl Poison.Decoder, for: GoogleApi.Games.V1.Model.SnapshotListResponse do
  def decode(value, options) do
    GoogleApi.Games.V1.Model.SnapshotListResponse.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Games.V1.Model.SnapshotListResponse do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end

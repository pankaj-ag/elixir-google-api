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

defmodule GoogleApi.TagManager.V2.Model.SyncWorkspaceResponse do
  @moduledoc """
  A response after synchronizing the workspace to the latest container version.

  ## Attributes

  *   `mergeConflict` (*type:* `list(GoogleApi.TagManager.V2.Model.MergeConflict.t)`, *default:* `nil`) - The merge conflict after sync. If this field is not empty, the sync is still treated as successful. But a version cannot be created until all conflicts are resolved.
  *   `syncStatus` (*type:* `GoogleApi.TagManager.V2.Model.SyncStatus.t`, *default:* `nil`) - Indicates whether synchronization caused a merge conflict or sync error.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :mergeConflict => list(GoogleApi.TagManager.V2.Model.MergeConflict.t()) | nil,
          :syncStatus => GoogleApi.TagManager.V2.Model.SyncStatus.t() | nil
        }

  field(:mergeConflict, as: GoogleApi.TagManager.V2.Model.MergeConflict, type: :list)
  field(:syncStatus, as: GoogleApi.TagManager.V2.Model.SyncStatus)
end

defimpl Poison.Decoder, for: GoogleApi.TagManager.V2.Model.SyncWorkspaceResponse do
  def decode(value, options) do
    GoogleApi.TagManager.V2.Model.SyncWorkspaceResponse.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.TagManager.V2.Model.SyncWorkspaceResponse do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end

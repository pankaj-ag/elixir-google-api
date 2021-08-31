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

defmodule GoogleApi.YouTube.V3.Model.LiveChatNewSponsorDetails do
  @moduledoc """


  ## Attributes

  *   `isUpgrade` (*type:* `boolean()`, *default:* `nil`) - If the viewer just had upgraded from a lower level. For viewers that were not members at the time of purchase, this field is false.
  *   `memberLevelName` (*type:* `String.t`, *default:* `nil`) - The name of the Level that the viewer just had joined. The Level names are defined by the YouTube channel offering the Membership. In some situations this field isn't filled.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :isUpgrade => boolean() | nil,
          :memberLevelName => String.t() | nil
        }

  field(:isUpgrade)
  field(:memberLevelName)
end

defimpl Poison.Decoder, for: GoogleApi.YouTube.V3.Model.LiveChatNewSponsorDetails do
  def decode(value, options) do
    GoogleApi.YouTube.V3.Model.LiveChatNewSponsorDetails.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.YouTube.V3.Model.LiveChatNewSponsorDetails do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end

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

defmodule GoogleApi.CloudSearch.V1.Model.TopicState do
  @moduledoc """
  State of an topic thread as maintained within Tingle.

  ## Attributes

  *   `labelIdMessageCount` (*type:* `map()`, *default:* `nil`) - Map of label => count of topic constituent messages with label These only contain counts of labels that are relevant for topic normalization/denormalization. Eg. If a topic thread has 5 constituents, 4 of which are in inbox, this will contain ^i => 4. Some labels of interest are archive, inbox, trash, spam, etc.
  *   `numConstituents` (*type:* `integer()`, *default:* `nil`) - Number of constituents for this entity.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :labelIdMessageCount => map() | nil,
          :numConstituents => integer() | nil
        }

  field(:labelIdMessageCount, type: :map)
  field(:numConstituents)
end

defimpl Poison.Decoder, for: GoogleApi.CloudSearch.V1.Model.TopicState do
  def decode(value, options) do
    GoogleApi.CloudSearch.V1.Model.TopicState.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.CloudSearch.V1.Model.TopicState do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end

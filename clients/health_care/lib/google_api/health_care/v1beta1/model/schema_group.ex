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

defmodule GoogleApi.HealthCare.V1beta1.Model.SchemaGroup do
  @moduledoc """
  An HL7v2 logical group construct.

  ## Attributes

  *   `choice` (*type:* `boolean()`, *default:* `nil`) - True indicates that this is a choice group, meaning that only one of its segments can exist in a given message.
  *   `maxOccurs` (*type:* `integer()`, *default:* `nil`) - The maximum number of times this group can be repeated. 0 or -1 means unbounded.
  *   `members` (*type:* `list(GoogleApi.HealthCare.V1beta1.Model.GroupOrSegment.t)`, *default:* `nil`) - Nested groups and/or segments.
  *   `minOccurs` (*type:* `integer()`, *default:* `nil`) - The minimum number of times this group must be present/repeated.
  *   `name` (*type:* `String.t`, *default:* `nil`) - The name of this group. For example, "ORDER_DETAIL".
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :choice => boolean(),
          :maxOccurs => integer(),
          :members => list(GoogleApi.HealthCare.V1beta1.Model.GroupOrSegment.t()),
          :minOccurs => integer(),
          :name => String.t()
        }

  field(:choice)
  field(:maxOccurs)
  field(:members, as: GoogleApi.HealthCare.V1beta1.Model.GroupOrSegment, type: :list)
  field(:minOccurs)
  field(:name)
end

defimpl Poison.Decoder, for: GoogleApi.HealthCare.V1beta1.Model.SchemaGroup do
  def decode(value, options) do
    GoogleApi.HealthCare.V1beta1.Model.SchemaGroup.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.HealthCare.V1beta1.Model.SchemaGroup do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end

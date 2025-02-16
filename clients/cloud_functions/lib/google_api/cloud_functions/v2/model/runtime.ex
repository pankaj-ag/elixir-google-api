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

defmodule GoogleApi.CloudFunctions.V2.Model.Runtime do
  @moduledoc """
  Describes a runtime and any special information (e.g., deprecation status) related to it.

  ## Attributes

  *   `displayName` (*type:* `String.t`, *default:* `nil`) - The user facing name, eg 'Go 1.13', 'Node.js 12', etc.
  *   `environment` (*type:* `String.t`, *default:* `nil`) - The environment for the runtime.
  *   `name` (*type:* `String.t`, *default:* `nil`) - The name of the runtime, e.g., 'go113', 'nodejs12', etc.
  *   `stage` (*type:* `String.t`, *default:* `nil`) - The stage of life this runtime is in, e.g., BETA, GA, etc.
  *   `warnings` (*type:* `list(String.t)`, *default:* `nil`) - Warning messages, e.g., a deprecation warning.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :displayName => String.t() | nil,
          :environment => String.t() | nil,
          :name => String.t() | nil,
          :stage => String.t() | nil,
          :warnings => list(String.t()) | nil
        }

  field(:displayName)
  field(:environment)
  field(:name)
  field(:stage)
  field(:warnings, type: :list)
end

defimpl Poison.Decoder, for: GoogleApi.CloudFunctions.V2.Model.Runtime do
  def decode(value, options) do
    GoogleApi.CloudFunctions.V2.Model.Runtime.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.CloudFunctions.V2.Model.Runtime do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end

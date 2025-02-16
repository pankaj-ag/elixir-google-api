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

defmodule GoogleApi.DataMigration.V1.Model.GenerateSshScriptRequest do
  @moduledoc """
  Request message for 'GenerateSshScript' request.

  ## Attributes

  *   `vm` (*type:* `String.t`, *default:* `nil`) - Required. Bastion VM Instance name to use or to create.
  *   `vmCreationConfig` (*type:* `GoogleApi.DataMigration.V1.Model.VmCreationConfig.t`, *default:* `nil`) - The VM creation configuration
  *   `vmPort` (*type:* `integer()`, *default:* `nil`) - The port that will be open on the bastion host
  *   `vmSelectionConfig` (*type:* `GoogleApi.DataMigration.V1.Model.VmSelectionConfig.t`, *default:* `nil`) - The VM selection configuration
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :vm => String.t() | nil,
          :vmCreationConfig => GoogleApi.DataMigration.V1.Model.VmCreationConfig.t() | nil,
          :vmPort => integer() | nil,
          :vmSelectionConfig => GoogleApi.DataMigration.V1.Model.VmSelectionConfig.t() | nil
        }

  field(:vm)
  field(:vmCreationConfig, as: GoogleApi.DataMigration.V1.Model.VmCreationConfig)
  field(:vmPort)
  field(:vmSelectionConfig, as: GoogleApi.DataMigration.V1.Model.VmSelectionConfig)
end

defimpl Poison.Decoder, for: GoogleApi.DataMigration.V1.Model.GenerateSshScriptRequest do
  def decode(value, options) do
    GoogleApi.DataMigration.V1.Model.GenerateSshScriptRequest.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.DataMigration.V1.Model.GenerateSshScriptRequest do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end

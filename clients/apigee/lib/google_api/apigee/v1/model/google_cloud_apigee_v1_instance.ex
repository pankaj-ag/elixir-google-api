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

defmodule GoogleApi.Apigee.V1.Model.GoogleCloudApigeeV1Instance do
  @moduledoc """
  Apigee runtime instance.

  ## Attributes

  *   `createdAt` (*type:* `String.t`, *default:* `nil`) - Output only. Time the instance was created in milliseconds since epoch.
  *   `description` (*type:* `String.t`, *default:* `nil`) - Optional. Description of the instance.
  *   `diskEncryptionKeyName` (*type:* `String.t`, *default:* `nil`) - Optional. Customer Managed Encryption Key (CMEK) used for disk & volume encryption.
  *   `displayName` (*type:* `String.t`, *default:* `nil`) - Optional. Display name for the instance.
  *   `host` (*type:* `String.t`, *default:* `nil`) - Output only. Hostname or IP address of the exposed Apigee endpoint used by clients to connect to the service.
  *   `lastModifiedAt` (*type:* `String.t`, *default:* `nil`) - Output only. Time the instance was last modified in milliseconds since epoch.
  *   `location` (*type:* `String.t`, *default:* `nil`) - Required. Compute Engine location where the instance resides.
  *   `name` (*type:* `String.t`, *default:* `nil`) - Required. Resource ID of the instance. Values must match the regular expression `^a-z{0,30}[a-z\\d]$`.
  *   `port` (*type:* `String.t`, *default:* `nil`) - Output only. Port number of the exposed Apigee endpoint.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :createdAt => String.t(),
          :description => String.t(),
          :diskEncryptionKeyName => String.t(),
          :displayName => String.t(),
          :host => String.t(),
          :lastModifiedAt => String.t(),
          :location => String.t(),
          :name => String.t(),
          :port => String.t()
        }

  field(:createdAt)
  field(:description)
  field(:diskEncryptionKeyName)
  field(:displayName)
  field(:host)
  field(:lastModifiedAt)
  field(:location)
  field(:name)
  field(:port)
end

defimpl Poison.Decoder, for: GoogleApi.Apigee.V1.Model.GoogleCloudApigeeV1Instance do
  def decode(value, options) do
    GoogleApi.Apigee.V1.Model.GoogleCloudApigeeV1Instance.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Apigee.V1.Model.GoogleCloudApigeeV1Instance do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end

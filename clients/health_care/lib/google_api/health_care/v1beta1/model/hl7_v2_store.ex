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

defmodule GoogleApi.HealthCare.V1beta1.Model.Hl7V2Store do
  @moduledoc """
  Represents an HL7v2 store.

  ## Attributes

  *   `labels` (*type:* `map()`, *default:* `nil`) - User-supplied key-value pairs used to organize HL7v2 stores. Label keys must be between 1 and 63 characters long, have a UTF-8 encoding of maximum 128 bytes, and must conform to the following PCRE regular expression: \\p{Ll}\\p{Lo}{0,62} Label values are optional, must be between 1 and 63 characters long, have a UTF-8 encoding of maximum 128 bytes, and must conform to the following PCRE regular expression: [\\p{Ll}\\p{Lo}\\p{N}_-]{0,63} No more than 64 labels can be associated with a given store.
  *   `name` (*type:* `String.t`, *default:* `nil`) - Resource name of the HL7v2 store, of the form `projects/{project_id}/datasets/{dataset_id}/hl7V2Stores/{hl7v2_store_id}`.
  *   `notificationConfig` (*type:* `GoogleApi.HealthCare.V1beta1.Model.NotificationConfig.t`, *default:* `nil`) - The notification destination all messages (both Ingest & Create) are published on. Only the message name is sent as part of the notification. If this is unset, no notifications are sent. Supplied by the client.
  *   `notificationConfigs` (*type:* `list(GoogleApi.HealthCare.V1beta1.Model.Hl7V2NotificationConfig.t)`, *default:* `nil`) - A list of notification configs. Each configuration uses a filter to determine whether to publish a message (both Ingest & Create) on the corresponding notification destination. Only the message name is sent as part of the notification. Supplied by the client.
  *   `parserConfig` (*type:* `GoogleApi.HealthCare.V1beta1.Model.ParserConfig.t`, *default:* `nil`) - The configuration for the parser. It determines how the server parses the messages.
  *   `rejectDuplicateMessage` (*type:* `boolean()`, *default:* `nil`) - Determines whether to reject duplicate messages. A duplicate message is a message with the same raw bytes as a message that has already been ingested/created in this HL7v2 store. The default value is false, meaning that the store accepts the duplicate messages and it also returns the same ACK message in the IngestMessageResponse as has been returned previously. Note that only one resource is created in the store. When this field is set to true, CreateMessage/IngestMessage requests with a duplicate message will be rejected by the store, and IngestMessageErrorDetail returns a NACK message upon rejection.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :labels => map(),
          :name => String.t(),
          :notificationConfig => GoogleApi.HealthCare.V1beta1.Model.NotificationConfig.t(),
          :notificationConfigs =>
            list(GoogleApi.HealthCare.V1beta1.Model.Hl7V2NotificationConfig.t()),
          :parserConfig => GoogleApi.HealthCare.V1beta1.Model.ParserConfig.t(),
          :rejectDuplicateMessage => boolean()
        }

  field(:labels, type: :map)
  field(:name)
  field(:notificationConfig, as: GoogleApi.HealthCare.V1beta1.Model.NotificationConfig)

  field(:notificationConfigs,
    as: GoogleApi.HealthCare.V1beta1.Model.Hl7V2NotificationConfig,
    type: :list
  )

  field(:parserConfig, as: GoogleApi.HealthCare.V1beta1.Model.ParserConfig)
  field(:rejectDuplicateMessage)
end

defimpl Poison.Decoder, for: GoogleApi.HealthCare.V1beta1.Model.Hl7V2Store do
  def decode(value, options) do
    GoogleApi.HealthCare.V1beta1.Model.Hl7V2Store.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.HealthCare.V1beta1.Model.Hl7V2Store do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end

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

defmodule GoogleApi.CloudSearch.V1.Model.ChatConserverDynamitePlaceholderMetadata do
  @moduledoc """
  Metadata used as inputs to the localization that is performed on Dynamite-originated messages that are incompatible with Hangouts clients. See go/localization-of-system-messages for more details.

  ## Attributes

  *   `attachmentMetadata` (*type:* `GoogleApi.CloudSearch.V1.Model.ChatConserverDynamitePlaceholderMetadataAttachmentMetadata.t`, *default:* `nil`) - 
  *   `botMessageMetadata` (*type:* `GoogleApi.CloudSearch.V1.Model.ChatConserverDynamitePlaceholderMetadataBotMessageMetadata.t`, *default:* `nil`) - 
  *   `calendarEventMetadata` (*type:* `GoogleApi.CloudSearch.V1.Model.ChatConserverDynamitePlaceholderMetadataCalendarEventMetadata.t`, *default:* `nil`) - 
  *   `deleteMetadata` (*type:* `GoogleApi.CloudSearch.V1.Model.ChatConserverDynamitePlaceholderMetadataDeleteMetadata.t`, *default:* `nil`) - 
  *   `editMetadata` (*type:* `GoogleApi.CloudSearch.V1.Model.ChatConserverDynamitePlaceholderMetadataEditMetadata.t`, *default:* `nil`) - 
  *   `spaceUrl` (*type:* `String.t`, *default:* `nil`) - The space URL embedded in the localized string.
  *   `tasksMetadata` (*type:* `GoogleApi.CloudSearch.V1.Model.ChatConserverDynamitePlaceholderMetadataTasksMetadata.t`, *default:* `nil`) - 
  *   `videoCallMetadata` (*type:* `GoogleApi.CloudSearch.V1.Model.ChatConserverDynamitePlaceholderMetadataVideoCallMetadata.t`, *default:* `nil`) - 
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :attachmentMetadata =>
            GoogleApi.CloudSearch.V1.Model.ChatConserverDynamitePlaceholderMetadataAttachmentMetadata.t()
            | nil,
          :botMessageMetadata =>
            GoogleApi.CloudSearch.V1.Model.ChatConserverDynamitePlaceholderMetadataBotMessageMetadata.t()
            | nil,
          :calendarEventMetadata =>
            GoogleApi.CloudSearch.V1.Model.ChatConserverDynamitePlaceholderMetadataCalendarEventMetadata.t()
            | nil,
          :deleteMetadata =>
            GoogleApi.CloudSearch.V1.Model.ChatConserverDynamitePlaceholderMetadataDeleteMetadata.t()
            | nil,
          :editMetadata =>
            GoogleApi.CloudSearch.V1.Model.ChatConserverDynamitePlaceholderMetadataEditMetadata.t()
            | nil,
          :spaceUrl => String.t() | nil,
          :tasksMetadata =>
            GoogleApi.CloudSearch.V1.Model.ChatConserverDynamitePlaceholderMetadataTasksMetadata.t()
            | nil,
          :videoCallMetadata =>
            GoogleApi.CloudSearch.V1.Model.ChatConserverDynamitePlaceholderMetadataVideoCallMetadata.t()
            | nil
        }

  field(:attachmentMetadata,
    as: GoogleApi.CloudSearch.V1.Model.ChatConserverDynamitePlaceholderMetadataAttachmentMetadata
  )

  field(:botMessageMetadata,
    as: GoogleApi.CloudSearch.V1.Model.ChatConserverDynamitePlaceholderMetadataBotMessageMetadata
  )

  field(:calendarEventMetadata,
    as:
      GoogleApi.CloudSearch.V1.Model.ChatConserverDynamitePlaceholderMetadataCalendarEventMetadata
  )

  field(:deleteMetadata,
    as: GoogleApi.CloudSearch.V1.Model.ChatConserverDynamitePlaceholderMetadataDeleteMetadata
  )

  field(:editMetadata,
    as: GoogleApi.CloudSearch.V1.Model.ChatConserverDynamitePlaceholderMetadataEditMetadata
  )

  field(:spaceUrl)

  field(:tasksMetadata,
    as: GoogleApi.CloudSearch.V1.Model.ChatConserverDynamitePlaceholderMetadataTasksMetadata
  )

  field(:videoCallMetadata,
    as: GoogleApi.CloudSearch.V1.Model.ChatConserverDynamitePlaceholderMetadataVideoCallMetadata
  )
end

defimpl Poison.Decoder,
  for: GoogleApi.CloudSearch.V1.Model.ChatConserverDynamitePlaceholderMetadata do
  def decode(value, options) do
    GoogleApi.CloudSearch.V1.Model.ChatConserverDynamitePlaceholderMetadata.decode(value, options)
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.CloudSearch.V1.Model.ChatConserverDynamitePlaceholderMetadata do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end

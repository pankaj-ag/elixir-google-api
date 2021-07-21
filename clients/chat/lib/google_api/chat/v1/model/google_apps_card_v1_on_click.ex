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

defmodule GoogleApi.Chat.V1.Model.GoogleAppsCardV1OnClick do
  @moduledoc """


  ## Attributes

  *   `action` (*type:* `GoogleApi.Chat.V1.Model.GoogleAppsCardV1Action.t`, *default:* `nil`) - If specified, an action is triggered by this onClick.
  *   `card` (*type:* `GoogleApi.Chat.V1.Model.GoogleAppsCardV1Card.t`, *default:* `nil`) - A new card is pushed to the card stack after clicking if specified.
  *   `openDynamicLinkAction` (*type:* `GoogleApi.Chat.V1.Model.GoogleAppsCardV1Action.t`, *default:* `nil`) - An add-on triggers this action when the action needs to open a link. This differs from the open_link above in that this needs to talk to server to get the link. Thus some preparation work is required for web client to do before the open link action response comes back.
  *   `openLink` (*type:* `GoogleApi.Chat.V1.Model.GoogleAppsCardV1OpenLink.t`, *default:* `nil`) - If specified, this onClick triggers an open link action.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :action => GoogleApi.Chat.V1.Model.GoogleAppsCardV1Action.t() | nil,
          :card => GoogleApi.Chat.V1.Model.GoogleAppsCardV1Card.t() | nil,
          :openDynamicLinkAction => GoogleApi.Chat.V1.Model.GoogleAppsCardV1Action.t() | nil,
          :openLink => GoogleApi.Chat.V1.Model.GoogleAppsCardV1OpenLink.t() | nil
        }

  field(:action, as: GoogleApi.Chat.V1.Model.GoogleAppsCardV1Action)
  field(:card, as: GoogleApi.Chat.V1.Model.GoogleAppsCardV1Card)
  field(:openDynamicLinkAction, as: GoogleApi.Chat.V1.Model.GoogleAppsCardV1Action)
  field(:openLink, as: GoogleApi.Chat.V1.Model.GoogleAppsCardV1OpenLink)
end

defimpl Poison.Decoder, for: GoogleApi.Chat.V1.Model.GoogleAppsCardV1OnClick do
  def decode(value, options) do
    GoogleApi.Chat.V1.Model.GoogleAppsCardV1OnClick.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Chat.V1.Model.GoogleAppsCardV1OnClick do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end

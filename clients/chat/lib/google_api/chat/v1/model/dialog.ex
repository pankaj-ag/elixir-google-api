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

defmodule GoogleApi.Chat.V1.Model.Dialog do
  @moduledoc """
  Wrapper around the card body of the dialog.

  ## Attributes

  *   `body` (*type:* `GoogleApi.Chat.V1.Model.GoogleAppsCardV1Card.t`, *default:* `nil`) - Body of the dialog, which will be rendered in a modal. NOTE: The following fields within the objects are not supported: google.apps.card.v1.Widget.date_time_picker google.apps.card.v1.DecoratedText.SwitchControl.on_change_action google.apps.card.v1.TextInput.on_change_action google.apps.card.v1.SelectionInput.on_change_action google.apps.card.v1.DateTimePicker.on_change_action Setting the fields above will have no effect on the dialog.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :body => GoogleApi.Chat.V1.Model.GoogleAppsCardV1Card.t() | nil
        }

  field(:body, as: GoogleApi.Chat.V1.Model.GoogleAppsCardV1Card)
end

defimpl Poison.Decoder, for: GoogleApi.Chat.V1.Model.Dialog do
  def decode(value, options) do
    GoogleApi.Chat.V1.Model.Dialog.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Chat.V1.Model.Dialog do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end

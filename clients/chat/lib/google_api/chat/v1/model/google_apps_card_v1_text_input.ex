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

defmodule GoogleApi.Chat.V1.Model.GoogleAppsCardV1TextInput do
  @moduledoc """
  A field in which users can enter text. Supports suggestions and on-change actions. Chat apps receive and can process the value of entered text during form input events. For details about working with form inputs, see [Receive form data](https://developers.google.com/chat/how-tos/dialogs#receive_form_data_from_dialogs). When you need to collect abstract data from users, use a text input. To collect defined data from users, use the selection input widget instead. Only supported in [dialogs](https://developers.google.com/chat/how-tos/dialogs). Support for [card messages](https://developers.google.com/chat/api/guides/message-formats/cards) coming soon.

  ## Attributes

  *   `autoCompleteAction` (*type:* `GoogleApi.Chat.V1.Model.GoogleAppsCardV1Action.t`, *default:* `nil`) - Optional. Specify what action to take when the text input field provides suggestions to users who interact with it. If unspecified, the suggestions are set by `initialSuggestions` and are processed by the client. If specified, the app takes the action specified here, such as running a custom function. Supported by Google Workspace Add-ons, but not Chat apps. Support by Chat apps coming soon.
  *   `hintText` (*type:* `String.t`, *default:* `nil`) - Text that appears inside the text input field meant to assist users by prompting them to enter a certain value. This text is not visible after users begin typing. Required if `label` is unspecified. Otherwise, optional.
  *   `initialSuggestions` (*type:* `GoogleApi.Chat.V1.Model.GoogleAppsCardV1Suggestions.t`, *default:* `nil`) - Suggested values that users can enter. These values appear when users click inside the text input field. As users type, the suggested values dynamically filter to match what the users have typed. For example, a text input field for programming language might suggest Java, JavaScript, Python, and C++. When users start typing "Jav", the list of suggestions filters to show just Java and JavaScript. Suggested values help guide users to enter values that your app can make sense of. When referring to JavaScript, some users might enter "javascript" and others "java script". Suggesting "JavaScript" can standardize how users interact with your app. When specified, `TextInput.type` is always `SINGLE_LINE`, even if it is set to `MULTIPLE_LINE`.
  *   `label` (*type:* `String.t`, *default:* `nil`) - The text that appears above the text input field in the user interface. Specify text that helps the user enter the information your app needs. For example, if you are asking someone's name, but specifically need their surname, write "surname" instead of "name". Required if `hintText` is unspecified. Otherwise, optional.
  *   `name` (*type:* `String.t`, *default:* `nil`) - The name by which the text input is identified in a form input event. For details about working with form inputs, see [Receive form data](https://developers.google.com/chat/how-tos/dialogs#receive_form_data_from_dialogs).
  *   `onChangeAction` (*type:* `GoogleApi.Chat.V1.Model.GoogleAppsCardV1Action.t`, *default:* `nil`) - What to do when a change occurs in the text input field. Examples of changes include a user adding to the field, or deleting text. Examples of actions to take include running a custom function or opening a [dialog](https://developers.google.com/chat/how-tos/dialogs) in Google Chat.
  *   `type` (*type:* `String.t`, *default:* `nil`) - How a text input field appears in the user interface. For example, whether the field is single or multi-line.
  *   `value` (*type:* `String.t`, *default:* `nil`) - The value entered by a user, returned as part of a form input event. For details about working with form inputs, see [Receive form data](https://developers.google.com/chat/how-tos/dialogs#receive_form_data_from_dialogs).
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :autoCompleteAction => GoogleApi.Chat.V1.Model.GoogleAppsCardV1Action.t() | nil,
          :hintText => String.t() | nil,
          :initialSuggestions => GoogleApi.Chat.V1.Model.GoogleAppsCardV1Suggestions.t() | nil,
          :label => String.t() | nil,
          :name => String.t() | nil,
          :onChangeAction => GoogleApi.Chat.V1.Model.GoogleAppsCardV1Action.t() | nil,
          :type => String.t() | nil,
          :value => String.t() | nil
        }

  field(:autoCompleteAction, as: GoogleApi.Chat.V1.Model.GoogleAppsCardV1Action)
  field(:hintText)
  field(:initialSuggestions, as: GoogleApi.Chat.V1.Model.GoogleAppsCardV1Suggestions)
  field(:label)
  field(:name)
  field(:onChangeAction, as: GoogleApi.Chat.V1.Model.GoogleAppsCardV1Action)
  field(:type)
  field(:value)
end

defimpl Poison.Decoder, for: GoogleApi.Chat.V1.Model.GoogleAppsCardV1TextInput do
  def decode(value, options) do
    GoogleApi.Chat.V1.Model.GoogleAppsCardV1TextInput.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Chat.V1.Model.GoogleAppsCardV1TextInput do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end

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

defmodule GoogleApi.Chat.V1.Model.GoogleAppsCardV1Section do
  @moduledoc """
  A section contains a collection of widgets that are rendered vertically in the order that they are specified. Across all platforms, cards have a narrow fixed width, so there is currently no need for layout properties, for example, float.

  ## Attributes

  *   `collapsible` (*type:* `boolean()`, *default:* `nil`) - Indicates whether this section is collapsible. If a section is collapsible, the description must be given.
  *   `header` (*type:* `String.t`, *default:* `nil`) - The header of the section. Formatted text is supported.
  *   `uncollapsibleWidgetsCount` (*type:* `integer()`, *default:* `nil`) - The number of uncollapsible widgets. For example, when a section contains five widgets and the `numUncollapsibleWidget` is set to `2`, the first two widgets are always shown and the last three are collapsed as default. The `numUncollapsibleWidget` is taken into account only when collapsible is set to `true`.
  *   `widgets` (*type:* `list(GoogleApi.Chat.V1.Model.GoogleAppsCardV1Widget.t)`, *default:* `nil`) - A section must contain at least 1 widget.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :collapsible => boolean() | nil,
          :header => String.t() | nil,
          :uncollapsibleWidgetsCount => integer() | nil,
          :widgets => list(GoogleApi.Chat.V1.Model.GoogleAppsCardV1Widget.t()) | nil
        }

  field(:collapsible)
  field(:header)
  field(:uncollapsibleWidgetsCount)
  field(:widgets, as: GoogleApi.Chat.V1.Model.GoogleAppsCardV1Widget, type: :list)
end

defimpl Poison.Decoder, for: GoogleApi.Chat.V1.Model.GoogleAppsCardV1Section do
  def decode(value, options) do
    GoogleApi.Chat.V1.Model.GoogleAppsCardV1Section.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Chat.V1.Model.GoogleAppsCardV1Section do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end

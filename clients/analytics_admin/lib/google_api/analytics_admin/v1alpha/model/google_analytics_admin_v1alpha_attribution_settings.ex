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

defmodule GoogleApi.AnalyticsAdmin.V1alpha.Model.GoogleAnalyticsAdminV1alphaAttributionSettings do
  @moduledoc """
  The attribution settings used for a given property. This is a singleton resource.

  ## Attributes

  *   `acquisitionConversionEventLookbackWindow` (*type:* `String.t`, *default:* `nil`) - Required. The lookback window configuration for acquisition conversion events. The default window size is 30 days.
  *   `name` (*type:* `String.t`, *default:* `nil`) - Output only. Resource name of this attribution settings resource. Format: properties/{property_id}/attributionSettings Example: "properties/1000/attributionSettings"
  *   `otherConversionEventLookbackWindow` (*type:* `String.t`, *default:* `nil`) - Required. The lookback window for all other, non-acquisition conversion events. The default window size is 90 days.
  *   `reportingAttributionModel` (*type:* `String.t`, *default:* `nil`) - Required. The reporting attribution model used to calculate conversion credit in this property's reports. Changing the attribution model will apply to both historical and future data. These changes will be reflected in reports with conversion and revenue data. User and session data will be unaffected.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :acquisitionConversionEventLookbackWindow => String.t() | nil,
          :name => String.t() | nil,
          :otherConversionEventLookbackWindow => String.t() | nil,
          :reportingAttributionModel => String.t() | nil
        }

  field(:acquisitionConversionEventLookbackWindow)
  field(:name)
  field(:otherConversionEventLookbackWindow)
  field(:reportingAttributionModel)
end

defimpl Poison.Decoder,
  for: GoogleApi.AnalyticsAdmin.V1alpha.Model.GoogleAnalyticsAdminV1alphaAttributionSettings do
  def decode(value, options) do
    GoogleApi.AnalyticsAdmin.V1alpha.Model.GoogleAnalyticsAdminV1alphaAttributionSettings.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.AnalyticsAdmin.V1alpha.Model.GoogleAnalyticsAdminV1alphaAttributionSettings do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end

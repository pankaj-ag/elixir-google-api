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

defmodule GoogleApi.AdExchangeBuyer.V2beta1.Model.PublisherProfile do
  @moduledoc """
  Represents a publisher profile (https://support.google.com/admanager/answer/6035806) in Marketplace. All fields are read only. All string fields are free-form text entered by the publisher unless noted otherwise.

  ## Attributes

  *   `audienceDescription` (*type:* `String.t`, *default:* `nil`) - Description on the publisher's audience.
  *   `buyerPitchStatement` (*type:* `String.t`, *default:* `nil`) - Statement explaining what's unique about publisher's business, and why buyers should partner with the publisher.
  *   `directDealsContact` (*type:* `String.t`, *default:* `nil`) - Contact information for direct reservation deals. This is free text entered by the publisher and may include information like names, phone numbers and email addresses.
  *   `displayName` (*type:* `String.t`, *default:* `nil`) - Name of the publisher profile.
  *   `domains` (*type:* `list(String.t)`, *default:* `nil`) - The list of domains represented in this publisher profile. Empty if this is a parent profile. These are top private domains, meaning that these will not contain a string like "photos.google.co.uk/123", but will instead contain "google.co.uk".
  *   `googlePlusUrl` (*type:* `String.t`, *default:* `nil`) - URL to publisher's Google+ page.
  *   `isParent` (*type:* `boolean()`, *default:* `nil`) - Indicates if this profile is the parent profile of the seller. A parent profile represents all the inventory from the seller, as opposed to child profile that is created to brand a portion of inventory. One seller should have only one parent publisher profile, and can have multiple child profiles. Publisher profiles for the same seller will have same value of field google.ads.adexchange.buyer.v2beta1.PublisherProfile.seller. See https://support.google.com/admanager/answer/6035806 for details.
  *   `logoUrl` (*type:* `String.t`, *default:* `nil`) - A Google public URL to the logo for this publisher profile. The logo is stored as a PNG, JPG, or GIF image.
  *   `mediaKitUrl` (*type:* `String.t`, *default:* `nil`) - URL to additional marketing and sales materials.
  *   `mobileApps` (*type:* `list(GoogleApi.AdExchangeBuyer.V2beta1.Model.PublisherProfileMobileApplication.t)`, *default:* `nil`) - The list of apps represented in this publisher profile. Empty if this is a parent profile.
  *   `overview` (*type:* `String.t`, *default:* `nil`) - Overview of the publisher.
  *   `programmaticDealsContact` (*type:* `String.t`, *default:* `nil`) - Contact information for programmatic deals. This is free text entered by the publisher and may include information like names, phone numbers and email addresses.
  *   `publisherProfileId` (*type:* `String.t`, *default:* `nil`) - Unique ID for publisher profile.
  *   `rateCardInfoUrl` (*type:* `String.t`, *default:* `nil`) - URL to a publisher rate card.
  *   `samplePageUrl` (*type:* `String.t`, *default:* `nil`) - URL to a sample content page.
  *   `seller` (*type:* `GoogleApi.AdExchangeBuyer.V2beta1.Model.Seller.t`, *default:* `nil`) - Seller of the publisher profile.
  *   `topHeadlines` (*type:* `list(String.t)`, *default:* `nil`) - Up to three key metrics and rankings. Max 100 characters each. For example "#1 Mobile News Site for 20 Straight Months".
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :audienceDescription => String.t() | nil,
          :buyerPitchStatement => String.t() | nil,
          :directDealsContact => String.t() | nil,
          :displayName => String.t() | nil,
          :domains => list(String.t()) | nil,
          :googlePlusUrl => String.t() | nil,
          :isParent => boolean() | nil,
          :logoUrl => String.t() | nil,
          :mediaKitUrl => String.t() | nil,
          :mobileApps =>
            list(GoogleApi.AdExchangeBuyer.V2beta1.Model.PublisherProfileMobileApplication.t())
            | nil,
          :overview => String.t() | nil,
          :programmaticDealsContact => String.t() | nil,
          :publisherProfileId => String.t() | nil,
          :rateCardInfoUrl => String.t() | nil,
          :samplePageUrl => String.t() | nil,
          :seller => GoogleApi.AdExchangeBuyer.V2beta1.Model.Seller.t() | nil,
          :topHeadlines => list(String.t()) | nil
        }

  field(:audienceDescription)
  field(:buyerPitchStatement)
  field(:directDealsContact)
  field(:displayName)
  field(:domains, type: :list)
  field(:googlePlusUrl)
  field(:isParent)
  field(:logoUrl)
  field(:mediaKitUrl)

  field(:mobileApps,
    as: GoogleApi.AdExchangeBuyer.V2beta1.Model.PublisherProfileMobileApplication,
    type: :list
  )

  field(:overview)
  field(:programmaticDealsContact)
  field(:publisherProfileId)
  field(:rateCardInfoUrl)
  field(:samplePageUrl)
  field(:seller, as: GoogleApi.AdExchangeBuyer.V2beta1.Model.Seller)
  field(:topHeadlines, type: :list)
end

defimpl Poison.Decoder, for: GoogleApi.AdExchangeBuyer.V2beta1.Model.PublisherProfile do
  def decode(value, options) do
    GoogleApi.AdExchangeBuyer.V2beta1.Model.PublisherProfile.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.AdExchangeBuyer.V2beta1.Model.PublisherProfile do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end

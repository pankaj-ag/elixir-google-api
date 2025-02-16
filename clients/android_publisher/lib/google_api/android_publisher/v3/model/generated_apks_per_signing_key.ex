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

defmodule GoogleApi.AndroidPublisher.V3.Model.GeneratedApksPerSigningKey do
  @moduledoc """
  Download metadata for split, standalone and universal APKs, as well as asset pack slices, signed with a given key.

  ## Attributes

  *   `certificateSha256Hash` (*type:* `String.t`, *default:* `nil`) - SHA256 hash of the APK signing public key certificate.
  *   `generatedAssetPackSlices` (*type:* `list(GoogleApi.AndroidPublisher.V3.Model.GeneratedAssetPackSlice.t)`, *default:* `nil`) - List of asset pack slices which will be served for this app bundle, signed with a key corresponding to certificate_sha256_hash.
  *   `generatedSplitApks` (*type:* `list(GoogleApi.AndroidPublisher.V3.Model.GeneratedSplitApk.t)`, *default:* `nil`) - List of generated split APKs, signed with a key corresponding to certificate_sha256_hash.
  *   `generatedStandaloneApks` (*type:* `list(GoogleApi.AndroidPublisher.V3.Model.GeneratedStandaloneApk.t)`, *default:* `nil`) - List of generated standalone APKs, signed with a key corresponding to certificate_sha256_hash.
  *   `generatedUniversalApk` (*type:* `GoogleApi.AndroidPublisher.V3.Model.GeneratedUniversalApk.t`, *default:* `nil`) - Generated universal APK, signed with a key corresponding to certificate_sha256_hash. This field is not set if no universal APK was generated for this signing key.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :certificateSha256Hash => String.t() | nil,
          :generatedAssetPackSlices =>
            list(GoogleApi.AndroidPublisher.V3.Model.GeneratedAssetPackSlice.t()) | nil,
          :generatedSplitApks =>
            list(GoogleApi.AndroidPublisher.V3.Model.GeneratedSplitApk.t()) | nil,
          :generatedStandaloneApks =>
            list(GoogleApi.AndroidPublisher.V3.Model.GeneratedStandaloneApk.t()) | nil,
          :generatedUniversalApk =>
            GoogleApi.AndroidPublisher.V3.Model.GeneratedUniversalApk.t() | nil
        }

  field(:certificateSha256Hash)

  field(:generatedAssetPackSlices,
    as: GoogleApi.AndroidPublisher.V3.Model.GeneratedAssetPackSlice,
    type: :list
  )

  field(:generatedSplitApks,
    as: GoogleApi.AndroidPublisher.V3.Model.GeneratedSplitApk,
    type: :list
  )

  field(:generatedStandaloneApks,
    as: GoogleApi.AndroidPublisher.V3.Model.GeneratedStandaloneApk,
    type: :list
  )

  field(:generatedUniversalApk, as: GoogleApi.AndroidPublisher.V3.Model.GeneratedUniversalApk)
end

defimpl Poison.Decoder, for: GoogleApi.AndroidPublisher.V3.Model.GeneratedApksPerSigningKey do
  def decode(value, options) do
    GoogleApi.AndroidPublisher.V3.Model.GeneratedApksPerSigningKey.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.AndroidPublisher.V3.Model.GeneratedApksPerSigningKey do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end

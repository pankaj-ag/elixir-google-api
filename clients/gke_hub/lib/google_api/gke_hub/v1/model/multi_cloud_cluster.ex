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

defmodule GoogleApi.GKEHub.V1.Model.MultiCloudCluster do
  @moduledoc """
  MultiCloudCluster contains information specific to GKE Multi-Cloud clusters.

  ## Attributes

  *   `clusterMissing` (*type:* `boolean()`, *default:* `nil`) - Output only. If cluster_missing is set then it denotes that API(gkemulticloud.googleapis.com) resource for this GKE Multi-Cloud cluster no longer exists.
  *   `resourceLink` (*type:* `String.t`, *default:* `nil`) - Immutable. Self-link of the GCP resource for the GKE Multi-Cloud cluster. For example: //gkemulticloud.googleapis.com/projects/my-project/locations/us-west1-a/awsClusters/my-cluster //gkemulticloud.googleapis.com/projects/my-project/locations/us-west1-a/azureClusters/my-cluster //gkemulticloud.googleapis.com/projects/my-project/locations/us-west1-a/attachedClusters/my-cluster
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :clusterMissing => boolean() | nil,
          :resourceLink => String.t() | nil
        }

  field(:clusterMissing)
  field(:resourceLink)
end

defimpl Poison.Decoder, for: GoogleApi.GKEHub.V1.Model.MultiCloudCluster do
  def decode(value, options) do
    GoogleApi.GKEHub.V1.Model.MultiCloudCluster.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.GKEHub.V1.Model.MultiCloudCluster do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end

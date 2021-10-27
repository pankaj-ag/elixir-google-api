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

defmodule GoogleApi.Dataproc.V1.Model.GkeClusterConfig do
  @moduledoc """
  The cluster's GKE config.

  ## Attributes

  *   `namespacedGkeDeploymentTarget` (*type:* `GoogleApi.Dataproc.V1.Model.NamespacedGkeDeploymentTarget.t`, *default:* `nil`) - Optional. A target for the deployment.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :namespacedGkeDeploymentTarget =>
            GoogleApi.Dataproc.V1.Model.NamespacedGkeDeploymentTarget.t() | nil
        }

  field(:namespacedGkeDeploymentTarget,
    as: GoogleApi.Dataproc.V1.Model.NamespacedGkeDeploymentTarget
  )
end

defimpl Poison.Decoder, for: GoogleApi.Dataproc.V1.Model.GkeClusterConfig do
  def decode(value, options) do
    GoogleApi.Dataproc.V1.Model.GkeClusterConfig.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Dataproc.V1.Model.GkeClusterConfig do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end

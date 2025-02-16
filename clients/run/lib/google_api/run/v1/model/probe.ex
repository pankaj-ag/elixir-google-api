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

defmodule GoogleApi.Run.V1.Model.Probe do
  @moduledoc """
  Probe describes a health check to be performed against a container to determine whether it is alive or ready to receive traffic.

  ## Attributes

  *   `exec` (*type:* `GoogleApi.Run.V1.Model.ExecAction.t`, *default:* `nil`) - Not supported by Cloud Run.
  *   `failureThreshold` (*type:* `integer()`, *default:* `nil`) - Minimum consecutive failures for the probe to be considered failed after having succeeded. Defaults to 3. Minimum value is 1.
  *   `grpc` (*type:* `GoogleApi.Run.V1.Model.GRPCAction.t`, *default:* `nil`) - GRPCAction specifies an action involving a GRPC port.
  *   `httpGet` (*type:* `GoogleApi.Run.V1.Model.HTTPGetAction.t`, *default:* `nil`) - HTTPGet specifies the http request to perform.
  *   `initialDelaySeconds` (*type:* `integer()`, *default:* `nil`) - Number of seconds after the container has started before the probe is initiated. Defaults to 0 seconds. Minimum value is 0. Maximum value for liveness probe is 3600. Maximum value for startup probe is 240. More info: https://kubernetes.io/docs/concepts/workloads/pods/pod-lifecycle#container-probes
  *   `periodSeconds` (*type:* `integer()`, *default:* `nil`) - How often (in seconds) to perform the probe. Default to 10 seconds. Minimum value is 1. Maximum value for liveness probe is 3600. Maximum value for startup probe is 240. Must be greater or equal than timeout_seconds.
  *   `successThreshold` (*type:* `integer()`, *default:* `nil`) - Minimum consecutive successes for the probe to be considered successful after having failed. Must be 1 if set.
  *   `tcpSocket` (*type:* `GoogleApi.Run.V1.Model.TCPSocketAction.t`, *default:* `nil`) - TCPSocket specifies an action involving a TCP port.
  *   `timeoutSeconds` (*type:* `integer()`, *default:* `nil`) - Number of seconds after which the probe times out. Defaults to 1 second. Minimum value is 1. Maximum value is 3600. Must be smaller than period_seconds. More info: https://kubernetes.io/docs/concepts/workloads/pods/pod-lifecycle#container-probes
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :exec => GoogleApi.Run.V1.Model.ExecAction.t() | nil,
          :failureThreshold => integer() | nil,
          :grpc => GoogleApi.Run.V1.Model.GRPCAction.t() | nil,
          :httpGet => GoogleApi.Run.V1.Model.HTTPGetAction.t() | nil,
          :initialDelaySeconds => integer() | nil,
          :periodSeconds => integer() | nil,
          :successThreshold => integer() | nil,
          :tcpSocket => GoogleApi.Run.V1.Model.TCPSocketAction.t() | nil,
          :timeoutSeconds => integer() | nil
        }

  field(:exec, as: GoogleApi.Run.V1.Model.ExecAction)
  field(:failureThreshold)
  field(:grpc, as: GoogleApi.Run.V1.Model.GRPCAction)
  field(:httpGet, as: GoogleApi.Run.V1.Model.HTTPGetAction)
  field(:initialDelaySeconds)
  field(:periodSeconds)
  field(:successThreshold)
  field(:tcpSocket, as: GoogleApi.Run.V1.Model.TCPSocketAction)
  field(:timeoutSeconds)
end

defimpl Poison.Decoder, for: GoogleApi.Run.V1.Model.Probe do
  def decode(value, options) do
    GoogleApi.Run.V1.Model.Probe.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Run.V1.Model.Probe do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end

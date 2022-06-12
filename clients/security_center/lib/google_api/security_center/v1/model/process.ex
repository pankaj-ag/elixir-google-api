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

defmodule GoogleApi.SecurityCenter.V1.Model.Process do
  @moduledoc """
  Represents an operating system process.

  ## Attributes

  *   `args` (*type:* `list(String.t)`, *default:* `nil`) - Process arguments as JSON encoded strings.
  *   `argumentsTruncated` (*type:* `boolean()`, *default:* `nil`) - True if `args` is incomplete.
  *   `binary` (*type:* `GoogleApi.SecurityCenter.V1.Model.File.t`, *default:* `nil`) - File information for the process executable.
  *   `envVariables` (*type:* `list(GoogleApi.SecurityCenter.V1.Model.EnvironmentVariable.t)`, *default:* `nil`) - Process environment variables.
  *   `envVariablesTruncated` (*type:* `boolean()`, *default:* `nil`) - True if `env_variables` is incomplete.
  *   `libraries` (*type:* `list(GoogleApi.SecurityCenter.V1.Model.File.t)`, *default:* `nil`) - File information for libraries loaded by the process.
  *   `parentPid` (*type:* `String.t`, *default:* `nil`) - The parent process id.
  *   `pid` (*type:* `String.t`, *default:* `nil`) - The process id.
  *   `script` (*type:* `GoogleApi.SecurityCenter.V1.Model.File.t`, *default:* `nil`) - When the process represents the invocation of a script, `binary` provides information about the interpreter while `script` provides information about the script file provided to the interpreter.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :args => list(String.t()) | nil,
          :argumentsTruncated => boolean() | nil,
          :binary => GoogleApi.SecurityCenter.V1.Model.File.t() | nil,
          :envVariables => list(GoogleApi.SecurityCenter.V1.Model.EnvironmentVariable.t()) | nil,
          :envVariablesTruncated => boolean() | nil,
          :libraries => list(GoogleApi.SecurityCenter.V1.Model.File.t()) | nil,
          :parentPid => String.t() | nil,
          :pid => String.t() | nil,
          :script => GoogleApi.SecurityCenter.V1.Model.File.t() | nil
        }

  field(:args, type: :list)
  field(:argumentsTruncated)
  field(:binary, as: GoogleApi.SecurityCenter.V1.Model.File)
  field(:envVariables, as: GoogleApi.SecurityCenter.V1.Model.EnvironmentVariable, type: :list)
  field(:envVariablesTruncated)
  field(:libraries, as: GoogleApi.SecurityCenter.V1.Model.File, type: :list)
  field(:parentPid)
  field(:pid)
  field(:script, as: GoogleApi.SecurityCenter.V1.Model.File)
end

defimpl Poison.Decoder, for: GoogleApi.SecurityCenter.V1.Model.Process do
  def decode(value, options) do
    GoogleApi.SecurityCenter.V1.Model.Process.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.SecurityCenter.V1.Model.Process do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end

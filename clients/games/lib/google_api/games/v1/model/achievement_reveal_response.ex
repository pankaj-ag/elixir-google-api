# Copyright 2017 Google Inc.
#
# Licensed under the Apache License, Version 2.0 (the &quot;License&quot;);
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an &quot;AS IS&quot; BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule GoogleApi.Games.V1.Model.AchievementRevealResponse do
  @moduledoc """
  This is a JSON template for an achievement reveal response

  ## Attributes

  - currentState (String.t): The current state of the achievement for which a reveal was attempted. This might be UNLOCKED if the achievement was already unlocked. Possible values are:   - \&quot;REVEALED\&quot; - Achievement is revealed.  - \&quot;UNLOCKED\&quot; - Achievement is unlocked. Defaults to: `null`.
  - kind (String.t): Uniquely identifies the type of this resource. Value is always the fixed string games#achievementRevealResponse. Defaults to: `null`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :currentState => any(),
          :kind => any()
        }

  field(:currentState)
  field(:kind)
end

defimpl Poison.Decoder, for: GoogleApi.Games.V1.Model.AchievementRevealResponse do
  def decode(value, options) do
    GoogleApi.Games.V1.Model.AchievementRevealResponse.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Games.V1.Model.AchievementRevealResponse do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end

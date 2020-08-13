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

defmodule GoogleApi.Games.V1.Model.AchievementSetStepsAtLeastResponse do
  @moduledoc """
  An achievement set steps at least response.

  ## Attributes

  *   `currentSteps` (*type:* `integer()`, *default:* `nil`) - The current steps recorded for this incremental achievement.
  *   `kind` (*type:* `String.t`, *default:* `nil`) - Uniquely identifies the type of this resource. Value is always the fixed string `games#achievementSetStepsAtLeastResponse`.
  *   `newlyUnlocked` (*type:* `boolean()`, *default:* `nil`) - Whether the current steps for the achievement has reached the number of steps required to unlock.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :currentSteps => integer(),
          :kind => String.t(),
          :newlyUnlocked => boolean()
        }

  field(:currentSteps)
  field(:kind)
  field(:newlyUnlocked)
end

defimpl Poison.Decoder, for: GoogleApi.Games.V1.Model.AchievementSetStepsAtLeastResponse do
  def decode(value, options) do
    GoogleApi.Games.V1.Model.AchievementSetStepsAtLeastResponse.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Games.V1.Model.AchievementSetStepsAtLeastResponse do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end

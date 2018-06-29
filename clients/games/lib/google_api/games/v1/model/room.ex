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

defmodule GoogleApi.Games.V1.Model.Room do
  @moduledoc """
  This is a JSON template for a room resource object.

  ## Attributes

  - applicationId (String.t): The ID of the application being played. Defaults to: `null`.
  - autoMatchingCriteria (RoomAutoMatchingCriteria): Criteria for auto-matching players into this room. Defaults to: `null`.
  - autoMatchingStatus (RoomAutoMatchStatus): Auto-matching status for this room. Not set if the room is not currently in the auto-matching queue. Defaults to: `null`.
  - creationDetails (RoomModification): Details about the room creation. Defaults to: `null`.
  - description (String.t): This short description is generated by our servers and worded relative to the player requesting the room. It is intended to be displayed when the room is shown in a list (that is, an invitation to a room.) Defaults to: `null`.
  - inviterId (String.t): The ID of the participant that invited the user to the room. Not set if the user was not invited to the room. Defaults to: `null`.
  - kind (String.t): Uniquely identifies the type of this resource. Value is always the fixed string games#room. Defaults to: `null`.
  - lastUpdateDetails (RoomModification): Details about the last update to the room. Defaults to: `null`.
  - participants ([RoomParticipant]): The participants involved in the room, along with their statuses. Includes participants who have left or declined invitations. Defaults to: `null`.
  - roomId (String.t): Globally unique ID for a room. Defaults to: `null`.
  - roomStatusVersion (integer()): The version of the room status: an increasing counter, used by the client to ignore out-of-order updates to room status. Defaults to: `null`.
  - status (String.t): The status of the room. Possible values are:   - \&quot;ROOM_INVITING\&quot; - One or more players have been invited and not responded.  - \&quot;ROOM_AUTO_MATCHING\&quot; - One or more slots need to be filled by auto-matching.  - \&quot;ROOM_CONNECTING\&quot; - Players have joined and are connecting to each other (either before or after auto-matching).  - \&quot;ROOM_ACTIVE\&quot; - All players have joined and connected to each other.  - \&quot;ROOM_DELETED\&quot; - The room should no longer be shown on the client. Returned in sync calls when a player joins a room (as a tombstone), or for rooms where all joined participants have left. Defaults to: `null`.
  - variant (integer()): The variant / mode of the application being played; can be any integer value, or left blank. Defaults to: `null`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :applicationId => any(),
          :autoMatchingCriteria => GoogleApi.Games.V1.Model.RoomAutoMatchingCriteria.t(),
          :autoMatchingStatus => GoogleApi.Games.V1.Model.RoomAutoMatchStatus.t(),
          :creationDetails => GoogleApi.Games.V1.Model.RoomModification.t(),
          :description => any(),
          :inviterId => any(),
          :kind => any(),
          :lastUpdateDetails => GoogleApi.Games.V1.Model.RoomModification.t(),
          :participants => list(GoogleApi.Games.V1.Model.RoomParticipant.t()),
          :roomId => any(),
          :roomStatusVersion => any(),
          :status => any(),
          :variant => any()
        }

  field(:applicationId)
  field(:autoMatchingCriteria, as: GoogleApi.Games.V1.Model.RoomAutoMatchingCriteria)
  field(:autoMatchingStatus, as: GoogleApi.Games.V1.Model.RoomAutoMatchStatus)
  field(:creationDetails, as: GoogleApi.Games.V1.Model.RoomModification)
  field(:description)
  field(:inviterId)
  field(:kind)
  field(:lastUpdateDetails, as: GoogleApi.Games.V1.Model.RoomModification)
  field(:participants, as: GoogleApi.Games.V1.Model.RoomParticipant, type: :list)
  field(:roomId)
  field(:roomStatusVersion)
  field(:status)
  field(:variant)
end

defimpl Poison.Decoder, for: GoogleApi.Games.V1.Model.Room do
  def decode(value, options) do
    GoogleApi.Games.V1.Model.Room.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Games.V1.Model.Room do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end

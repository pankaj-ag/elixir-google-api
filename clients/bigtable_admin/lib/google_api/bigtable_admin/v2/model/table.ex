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

defmodule GoogleApi.BigtableAdmin.V2.Model.Table do
  @moduledoc """
  A collection of user data indexed by row, column, and timestamp. Each table is served using the resources of its parent cluster.

  ## Attributes

  *   `clusterStates` (*type:* `%{optional(String.t) => GoogleApi.BigtableAdmin.V2.Model.ClusterState.t}`, *default:* `nil`) - Output only. Map from cluster ID to per-cluster table state. If it could not be determined whether or not the table has data in a particular cluster (for example, if its zone is unavailable), then there will be an entry for the cluster with UNKNOWN `replication_status`. Views: `REPLICATION_VIEW`, `ENCRYPTION_VIEW`, `FULL`
  *   `columnFamilies` (*type:* `%{optional(String.t) => GoogleApi.BigtableAdmin.V2.Model.ColumnFamily.t}`, *default:* `nil`) - The column families configured for this table, mapped by column family ID. Views: `SCHEMA_VIEW`, `STATS_VIEW`, `FULL`
  *   `deletionProtection` (*type:* `boolean()`, *default:* `nil`) - Set to true to make the table protected against data loss. i.e. deleting the following resources through Admin APIs are prohibited: - The table. - The column families in the table. - The instance containing the table. Note one can still delete the data stored in the table through Data APIs.
  *   `granularity` (*type:* `String.t`, *default:* `nil`) - Immutable. The granularity (i.e. `MILLIS`) at which timestamps are stored in this table. Timestamps not matching the granularity will be rejected. If unspecified at creation time, the value will be set to `MILLIS`. Views: `SCHEMA_VIEW`, `FULL`.
  *   `name` (*type:* `String.t`, *default:* `nil`) - The unique name of the table. Values are of the form `projects/{project}/instances/{instance}/tables/_a-zA-Z0-9*`. Views: `NAME_ONLY`, `SCHEMA_VIEW`, `REPLICATION_VIEW`, `STATS_VIEW`, `FULL`
  *   `restoreInfo` (*type:* `GoogleApi.BigtableAdmin.V2.Model.RestoreInfo.t`, *default:* `nil`) - Output only. If this table was restored from another data source (e.g. a backup), this field will be populated with information about the restore.
  *   `stats` (*type:* `GoogleApi.BigtableAdmin.V2.Model.TableStats.t`, *default:* `nil`) - Only available with STATS_VIEW, this includes summary statistics about the entire table contents. For statistics about a specific column family, see ColumnFamilyStats in the mapped ColumnFamily collection above.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :clusterStates =>
            %{optional(String.t()) => GoogleApi.BigtableAdmin.V2.Model.ClusterState.t()} | nil,
          :columnFamilies =>
            %{optional(String.t()) => GoogleApi.BigtableAdmin.V2.Model.ColumnFamily.t()} | nil,
          :deletionProtection => boolean() | nil,
          :granularity => String.t() | nil,
          :name => String.t() | nil,
          :restoreInfo => GoogleApi.BigtableAdmin.V2.Model.RestoreInfo.t() | nil,
          :stats => GoogleApi.BigtableAdmin.V2.Model.TableStats.t() | nil
        }

  field(:clusterStates, as: GoogleApi.BigtableAdmin.V2.Model.ClusterState, type: :map)
  field(:columnFamilies, as: GoogleApi.BigtableAdmin.V2.Model.ColumnFamily, type: :map)
  field(:deletionProtection)
  field(:granularity)
  field(:name)
  field(:restoreInfo, as: GoogleApi.BigtableAdmin.V2.Model.RestoreInfo)
  field(:stats, as: GoogleApi.BigtableAdmin.V2.Model.TableStats)
end

defimpl Poison.Decoder, for: GoogleApi.BigtableAdmin.V2.Model.Table do
  def decode(value, options) do
    GoogleApi.BigtableAdmin.V2.Model.Table.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.BigtableAdmin.V2.Model.Table do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end

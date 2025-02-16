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

defmodule GoogleApi.BigQuery.V2.Model.Routine do
  @moduledoc """
  A user-defined function or a stored procedure.

  ## Attributes

  *   `arguments` (*type:* `list(GoogleApi.BigQuery.V2.Model.Argument.t)`, *default:* `nil`) - Optional.
  *   `creationTime` (*type:* `String.t`, *default:* `nil`) - Output only. The time when this routine was created, in milliseconds since the epoch.
  *   `definitionBody` (*type:* `String.t`, *default:* `nil`) - Required. The body of the routine. For functions, this is the expression in the AS clause. If language=SQL, it is the substring inside (but excluding) the parentheses. For example, for the function created with the following statement: `CREATE FUNCTION JoinLines(x string, y string) as (concat(x, "\\n", y))` The definition_body is `concat(x, "\\n", y)` (\\n is not replaced with linebreak). If language=JAVASCRIPT, it is the evaluated string in the AS clause. For example, for the function created with the following statement: `CREATE FUNCTION f() RETURNS STRING LANGUAGE js AS 'return "\\n";\\n'` The definition_body is `return "\\n";\\n` Note that both \\n are replaced with linebreaks.
  *   `description` (*type:* `String.t`, *default:* `nil`) - Optional. The description of the routine, if defined.
  *   `determinismLevel` (*type:* `String.t`, *default:* `nil`) - Optional. The determinism level of the JavaScript UDF, if defined.
  *   `etag` (*type:* `String.t`, *default:* `nil`) - Output only. A hash of this resource.
  *   `importedLibraries` (*type:* `list(String.t)`, *default:* `nil`) - Optional. If language = "JAVASCRIPT", this field stores the path of the imported JAVASCRIPT libraries.
  *   `language` (*type:* `String.t`, *default:* `nil`) - Optional. Defaults to "SQL".
  *   `lastModifiedTime` (*type:* `String.t`, *default:* `nil`) - Output only. The time when this routine was last modified, in milliseconds since the epoch.
  *   `remoteFunctionOptions` (*type:* `GoogleApi.BigQuery.V2.Model.RemoteFunctionOptions.t`, *default:* `nil`) - Optional. Remote function specific options.
  *   `returnTableType` (*type:* `GoogleApi.BigQuery.V2.Model.StandardSqlTableType.t`, *default:* `nil`) - Optional. Can be set only if routine_type = "TABLE_VALUED_FUNCTION". If absent, the return table type is inferred from definition_body at query time in each query that references this routine. If present, then the columns in the evaluated table result will be cast to match the column types specificed in return table type, at query time.
  *   `returnType` (*type:* `GoogleApi.BigQuery.V2.Model.StandardSqlDataType.t`, *default:* `nil`) - Optional if language = "SQL"; required otherwise. Cannot be set if routine_type = "TABLE_VALUED_FUNCTION". If absent, the return type is inferred from definition_body at query time in each query that references this routine. If present, then the evaluated result will be cast to the specified returned type at query time. For example, for the functions created with the following statements: * `CREATE FUNCTION Add(x FLOAT64, y FLOAT64) RETURNS FLOAT64 AS (x + y);` * `CREATE FUNCTION Increment(x FLOAT64) AS (Add(x, 1));` * `CREATE FUNCTION Decrement(x FLOAT64) RETURNS FLOAT64 AS (Add(x, -1));` The return_type is `{type_kind: "FLOAT64"}` for `Add` and `Decrement`, and is absent for `Increment` (inferred as FLOAT64 at query time). Suppose the function `Add` is replaced by `CREATE OR REPLACE FUNCTION Add(x INT64, y INT64) AS (x + y);` Then the inferred return type of `Increment` is automatically changed to INT64 at query time, while the return type of `Decrement` remains FLOAT64.
  *   `routineReference` (*type:* `GoogleApi.BigQuery.V2.Model.RoutineReference.t`, *default:* `nil`) - Required. Reference describing the ID of this routine.
  *   `routineType` (*type:* `String.t`, *default:* `nil`) - Required. The type of routine.
  *   `sparkOptions` (*type:* `GoogleApi.BigQuery.V2.Model.SparkOptions.t`, *default:* `nil`) - Optional. Spark specific options.
  *   `strictMode` (*type:* `boolean()`, *default:* `nil`) - Optional. Can be set for procedures only. If true (default), the definition body will be validated in the creation and the updates of the procedure. For procedures with an argument of ANY TYPE, the definition body validtion is not supported at creation/update time, and thus this field must be set to false explicitly.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :arguments => list(GoogleApi.BigQuery.V2.Model.Argument.t()) | nil,
          :creationTime => String.t() | nil,
          :definitionBody => String.t() | nil,
          :description => String.t() | nil,
          :determinismLevel => String.t() | nil,
          :etag => String.t() | nil,
          :importedLibraries => list(String.t()) | nil,
          :language => String.t() | nil,
          :lastModifiedTime => String.t() | nil,
          :remoteFunctionOptions => GoogleApi.BigQuery.V2.Model.RemoteFunctionOptions.t() | nil,
          :returnTableType => GoogleApi.BigQuery.V2.Model.StandardSqlTableType.t() | nil,
          :returnType => GoogleApi.BigQuery.V2.Model.StandardSqlDataType.t() | nil,
          :routineReference => GoogleApi.BigQuery.V2.Model.RoutineReference.t() | nil,
          :routineType => String.t() | nil,
          :sparkOptions => GoogleApi.BigQuery.V2.Model.SparkOptions.t() | nil,
          :strictMode => boolean() | nil
        }

  field(:arguments, as: GoogleApi.BigQuery.V2.Model.Argument, type: :list)
  field(:creationTime)
  field(:definitionBody)
  field(:description)
  field(:determinismLevel)
  field(:etag)
  field(:importedLibraries, type: :list)
  field(:language)
  field(:lastModifiedTime)
  field(:remoteFunctionOptions, as: GoogleApi.BigQuery.V2.Model.RemoteFunctionOptions)
  field(:returnTableType, as: GoogleApi.BigQuery.V2.Model.StandardSqlTableType)
  field(:returnType, as: GoogleApi.BigQuery.V2.Model.StandardSqlDataType)
  field(:routineReference, as: GoogleApi.BigQuery.V2.Model.RoutineReference)
  field(:routineType)
  field(:sparkOptions, as: GoogleApi.BigQuery.V2.Model.SparkOptions)
  field(:strictMode)
end

defimpl Poison.Decoder, for: GoogleApi.BigQuery.V2.Model.Routine do
  def decode(value, options) do
    GoogleApi.BigQuery.V2.Model.Routine.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.BigQuery.V2.Model.Routine do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end

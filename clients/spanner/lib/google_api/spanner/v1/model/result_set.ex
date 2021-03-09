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

defmodule GoogleApi.Spanner.V1.Model.ResultSet do
  @moduledoc """
  Results from Read or ExecuteSql.

  ## Attributes

  *   `metadata` (*type:* `GoogleApi.Spanner.V1.Model.ResultSetMetadata.t`, *default:* `nil`) - Metadata about the result set, such as row type information.
  *   `rows` (*type:* `list(list(any()))`, *default:* `nil`) - Each element in `rows` is a row whose format is defined by metadata.row_type. The ith element in each row matches the ith field in metadata.row_type. Elements are encoded based on type as described here.
  *   `stats` (*type:* `GoogleApi.Spanner.V1.Model.ResultSetStats.t`, *default:* `nil`) - Query plan and execution statistics for the SQL statement that produced this result set. These can be requested by setting ExecuteSqlRequest.query_mode. DML statements always produce stats containing the number of rows modified, unless executed using the ExecuteSqlRequest.QueryMode.PLAN ExecuteSqlRequest.query_mode. Other fields may or may not be populated, based on the ExecuteSqlRequest.query_mode.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :metadata => GoogleApi.Spanner.V1.Model.ResultSetMetadata.t() | nil,
          :rows => list(list(any())) | nil,
          :stats => GoogleApi.Spanner.V1.Model.ResultSetStats.t() | nil
        }

  field(:metadata, as: GoogleApi.Spanner.V1.Model.ResultSetMetadata)
  field(:rows, type: :listlist)
  field(:stats, as: GoogleApi.Spanner.V1.Model.ResultSetStats)
end

defimpl Poison.Decoder, for: GoogleApi.Spanner.V1.Model.ResultSet do
  def decode(value, options) do
    GoogleApi.Spanner.V1.Model.ResultSet.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Spanner.V1.Model.ResultSet do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end

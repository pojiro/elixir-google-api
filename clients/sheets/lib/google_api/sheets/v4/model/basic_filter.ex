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

defmodule GoogleApi.Sheets.V4.Model.BasicFilter do
  @moduledoc """
  The default filter associated with a sheet.

  ## Attributes

  *   `criteria` (*type:* `%{optional(String.t) => GoogleApi.Sheets.V4.Model.FilterCriteria.t}`, *default:* `nil`) - The criteria for showing/hiding values per column. The map's key is the column index, and the value is the criteria for that column.
  *   `range` (*type:* `GoogleApi.Sheets.V4.Model.GridRange.t`, *default:* `nil`) - The range the filter covers.
  *   `sortSpecs` (*type:* `list(GoogleApi.Sheets.V4.Model.SortSpec.t)`, *default:* `nil`) - The sort order per column. Later specifications are used when values are equal in the earlier specifications.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :criteria => %{optional(String.t()) => GoogleApi.Sheets.V4.Model.FilterCriteria.t()},
          :range => GoogleApi.Sheets.V4.Model.GridRange.t(),
          :sortSpecs => list(GoogleApi.Sheets.V4.Model.SortSpec.t())
        }

  field(:criteria, as: GoogleApi.Sheets.V4.Model.FilterCriteria, type: :map)
  field(:range, as: GoogleApi.Sheets.V4.Model.GridRange)
  field(:sortSpecs, as: GoogleApi.Sheets.V4.Model.SortSpec, type: :list)
end

defimpl Poison.Decoder, for: GoogleApi.Sheets.V4.Model.BasicFilter do
  def decode(value, options) do
    GoogleApi.Sheets.V4.Model.BasicFilter.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Sheets.V4.Model.BasicFilter do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end

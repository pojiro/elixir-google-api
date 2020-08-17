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

defmodule GoogleApi.Sheets.V4.Model.CopyPasteRequest do
  @moduledoc """
  Copies data from the source to the destination.

  ## Attributes

  *   `destination` (*type:* `GoogleApi.Sheets.V4.Model.GridRange.t`, *default:* `nil`) - The location to paste to. If the range covers a span that's a multiple of the source's height or width, then the data will be repeated to fill in the destination range. If the range is smaller than the source range, the entire source data will still be copied (beyond the end of the destination range).
  *   `pasteOrientation` (*type:* `String.t`, *default:* `nil`) - How that data should be oriented when pasting.
  *   `pasteType` (*type:* `String.t`, *default:* `nil`) - What kind of data to paste.
  *   `source` (*type:* `GoogleApi.Sheets.V4.Model.GridRange.t`, *default:* `nil`) - The source range to copy.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :destination => GoogleApi.Sheets.V4.Model.GridRange.t(),
          :pasteOrientation => String.t(),
          :pasteType => String.t(),
          :source => GoogleApi.Sheets.V4.Model.GridRange.t()
        }

  field(:destination, as: GoogleApi.Sheets.V4.Model.GridRange)
  field(:pasteOrientation)
  field(:pasteType)
  field(:source, as: GoogleApi.Sheets.V4.Model.GridRange)
end

defimpl Poison.Decoder, for: GoogleApi.Sheets.V4.Model.CopyPasteRequest do
  def decode(value, options) do
    GoogleApi.Sheets.V4.Model.CopyPasteRequest.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Sheets.V4.Model.CopyPasteRequest do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end

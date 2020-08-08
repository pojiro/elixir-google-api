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

defmodule GoogleApi.Classroom.V1.Model.Form do
  @moduledoc """
  Google Forms item.

  ## Attributes

  *   `formUrl` (*type:* `String.t`, *default:* `nil`) - URL of the form.
  *   `responseUrl` (*type:* `String.t`, *default:* `nil`) - URL of the form responses document. Only set if respsonses have been recorded and only when the requesting user is an editor of the form. Read-only.
  *   `thumbnailUrl` (*type:* `String.t`, *default:* `nil`) - URL of a thumbnail image of the Form. Read-only.
  *   `title` (*type:* `String.t`, *default:* `nil`) - Title of the Form. Read-only.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :formUrl => String.t(),
          :responseUrl => String.t(),
          :thumbnailUrl => String.t(),
          :title => String.t()
        }

  field(:formUrl)
  field(:responseUrl)
  field(:thumbnailUrl)
  field(:title)
end

defimpl Poison.Decoder, for: GoogleApi.Classroom.V1.Model.Form do
  def decode(value, options) do
    GoogleApi.Classroom.V1.Model.Form.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Classroom.V1.Model.Form do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end

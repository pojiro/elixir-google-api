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

defmodule GoogleApi.Sheets.V4.Model.Editors do
  @moduledoc """
  The editors of a protected range.

  ## Attributes

  *   `domainUsersCanEdit` (*type:* `boolean()`, *default:* `nil`) - True if anyone in the document's domain has edit access to the protected range. Domain protection is only supported on documents within a domain.
  *   `groups` (*type:* `list(String.t)`, *default:* `nil`) - The email addresses of groups with edit access to the protected range.
  *   `users` (*type:* `list(String.t)`, *default:* `nil`) - The email addresses of users with edit access to the protected range.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :domainUsersCanEdit => boolean(),
          :groups => list(String.t()),
          :users => list(String.t())
        }

  field(:domainUsersCanEdit)
  field(:groups, type: :list)
  field(:users, type: :list)
end

defimpl Poison.Decoder, for: GoogleApi.Sheets.V4.Model.Editors do
  def decode(value, options) do
    GoogleApi.Sheets.V4.Model.Editors.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Sheets.V4.Model.Editors do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end

# Copyright 2019 Google LLC
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

# NOTE: This class is auto generated by the elixir code generator program.
# Do not edit the class manually.

defmodule GoogleApi.Plus.V1.Model.PersonCover do
  @moduledoc """
  The cover photo content.

  ## Attributes

  *   `coverInfo` (*type:* `GoogleApi.Plus.V1.Model.PersonCoverCoverInfo.t`, *default:* `nil`) - Extra information about the cover photo.
  *   `coverPhoto` (*type:* `GoogleApi.Plus.V1.Model.PersonCoverCoverPhoto.t`, *default:* `nil`) - The person's primary cover image.
  *   `layout` (*type:* `String.t`, *default:* `nil`) - The layout of the cover art. Possible values include, but are not limited to, the following values:  
      - "banner" - One large image banner.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :coverInfo => GoogleApi.Plus.V1.Model.PersonCoverCoverInfo.t(),
          :coverPhoto => GoogleApi.Plus.V1.Model.PersonCoverCoverPhoto.t(),
          :layout => String.t()
        }

  field(:coverInfo, as: GoogleApi.Plus.V1.Model.PersonCoverCoverInfo)
  field(:coverPhoto, as: GoogleApi.Plus.V1.Model.PersonCoverCoverPhoto)
  field(:layout)
end

defimpl Poison.Decoder, for: GoogleApi.Plus.V1.Model.PersonCover do
  def decode(value, options) do
    GoogleApi.Plus.V1.Model.PersonCover.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Plus.V1.Model.PersonCover do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end

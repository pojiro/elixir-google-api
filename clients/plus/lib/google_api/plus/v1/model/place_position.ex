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

defmodule GoogleApi.Plus.V1.Model.PlacePosition do
  @moduledoc """
  The position of the place.

  ## Attributes

  *   `latitude` (*type:* `float()`, *default:* `nil`) - The latitude of this position.
  *   `longitude` (*type:* `float()`, *default:* `nil`) - The longitude of this position.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :latitude => float(),
          :longitude => float()
        }

  field(:latitude)
  field(:longitude)
end

defimpl Poison.Decoder, for: GoogleApi.Plus.V1.Model.PlacePosition do
  def decode(value, options) do
    GoogleApi.Plus.V1.Model.PlacePosition.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Plus.V1.Model.PlacePosition do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end

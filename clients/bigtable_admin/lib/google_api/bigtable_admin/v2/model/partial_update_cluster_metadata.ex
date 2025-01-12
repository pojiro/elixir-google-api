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

defmodule GoogleApi.BigtableAdmin.V2.Model.PartialUpdateClusterMetadata do
  @moduledoc """
  The metadata for the Operation returned by PartialUpdateCluster.

  ## Attributes

  *   `finishTime` (*type:* `DateTime.t`, *default:* `nil`) - The time at which the operation failed or was completed successfully.
  *   `originalRequest` (*type:* `GoogleApi.BigtableAdmin.V2.Model.PartialUpdateClusterRequest.t`, *default:* `nil`) - 
  *   `requestTime` (*type:* `DateTime.t`, *default:* `nil`) - The time at which the original request was received.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :finishTime => DateTime.t() | nil,
          :originalRequest =>
            GoogleApi.BigtableAdmin.V2.Model.PartialUpdateClusterRequest.t() | nil,
          :requestTime => DateTime.t() | nil
        }

  field(:finishTime, as: DateTime)
  field(:originalRequest, as: GoogleApi.BigtableAdmin.V2.Model.PartialUpdateClusterRequest)
  field(:requestTime, as: DateTime)
end

defimpl Poison.Decoder, for: GoogleApi.BigtableAdmin.V2.Model.PartialUpdateClusterMetadata do
  def decode(value, options) do
    GoogleApi.BigtableAdmin.V2.Model.PartialUpdateClusterMetadata.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.BigtableAdmin.V2.Model.PartialUpdateClusterMetadata do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end

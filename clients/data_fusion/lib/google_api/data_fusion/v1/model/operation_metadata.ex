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

defmodule GoogleApi.DataFusion.V1.Model.OperationMetadata do
  @moduledoc """
  Represents the metadata of a long-running operation.

  ## Attributes

  *   `apiVersion` (*type:* `String.t`, *default:* `nil`) - API version used to start the operation.
  *   `createTime` (*type:* `DateTime.t`, *default:* `nil`) - The time the operation was created.
  *   `endTime` (*type:* `DateTime.t`, *default:* `nil`) - The time the operation finished running.
  *   `requestedCancellation` (*type:* `boolean()`, *default:* `nil`) - Identifies whether the user has requested cancellation of the operation. Operations that have successfully been cancelled have Operation.error value with a google.rpc.Status.code of 1, corresponding to `Code.CANCELLED`.
  *   `statusDetail` (*type:* `String.t`, *default:* `nil`) - Human-readable status of the operation if any.
  *   `target` (*type:* `String.t`, *default:* `nil`) - Server-defined resource path for the target of the operation.
  *   `verb` (*type:* `String.t`, *default:* `nil`) - Name of the verb executed by the operation.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :apiVersion => String.t(),
          :createTime => DateTime.t(),
          :endTime => DateTime.t(),
          :requestedCancellation => boolean(),
          :statusDetail => String.t(),
          :target => String.t(),
          :verb => String.t()
        }

  field(:apiVersion)
  field(:createTime, as: DateTime)
  field(:endTime, as: DateTime)
  field(:requestedCancellation)
  field(:statusDetail)
  field(:target)
  field(:verb)
end

defimpl Poison.Decoder, for: GoogleApi.DataFusion.V1.Model.OperationMetadata do
  def decode(value, options) do
    GoogleApi.DataFusion.V1.Model.OperationMetadata.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.DataFusion.V1.Model.OperationMetadata do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end

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

defmodule GoogleApi.Spanner.V1.Model.EncryptionInfo do
  @moduledoc """
  Encryption information for a Cloud Spanner database or backup.

  ## Attributes

  *   `encryptionStatus` (*type:* `GoogleApi.Spanner.V1.Model.Status.t`, *default:* `nil`) - Output only. If present, the status of a recent encrypt/decrypt call on underlying data for this database or backup. Regardless of status, data is always encrypted at rest.
  *   `encryptionType` (*type:* `String.t`, *default:* `nil`) - Output only. The type of encryption.
  *   `kmsKeyVersion` (*type:* `String.t`, *default:* `nil`) - Output only. A Cloud KMS key version that is being used to protect the database or backup.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :encryptionStatus => GoogleApi.Spanner.V1.Model.Status.t() | nil,
          :encryptionType => String.t() | nil,
          :kmsKeyVersion => String.t() | nil
        }

  field(:encryptionStatus, as: GoogleApi.Spanner.V1.Model.Status)
  field(:encryptionType)
  field(:kmsKeyVersion)
end

defimpl Poison.Decoder, for: GoogleApi.Spanner.V1.Model.EncryptionInfo do
  def decode(value, options) do
    GoogleApi.Spanner.V1.Model.EncryptionInfo.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Spanner.V1.Model.EncryptionInfo do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end

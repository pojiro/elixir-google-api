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

defmodule GoogleApi.Content.V21.Model.AccountStatus do
  @moduledoc """
  The status of an account, i.e., information about its products, which is computed offline and not returned immediately at insertion time.

  ## Attributes

  *   `accountId` (*type:* `String.t`, *default:* `nil`) - The ID of the account for which the status is reported.
  *   `accountLevelIssues` (*type:* `list(GoogleApi.Content.V21.Model.AccountStatusAccountLevelIssue.t)`, *default:* `nil`) - A list of account level issues.
  *   `accountManagement` (*type:* `String.t`, *default:* `nil`) - How the account is managed. Acceptable values are: - "`manual`" - "`automatic`" 
  *   `kind` (*type:* `String.t`, *default:* `nil`) - Identifies what kind of resource this is. Value: the fixed string "`content#accountStatus`"
  *   `products` (*type:* `list(GoogleApi.Content.V21.Model.AccountStatusProducts.t)`, *default:* `nil`) - List of product-related data by channel, destination, and country. Data in this field may be delayed by up to 30 minutes.
  *   `websiteClaimed` (*type:* `boolean()`, *default:* `nil`) - Whether the account's website is claimed or not.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :accountId => String.t() | nil,
          :accountLevelIssues =>
            list(GoogleApi.Content.V21.Model.AccountStatusAccountLevelIssue.t()) | nil,
          :accountManagement => String.t() | nil,
          :kind => String.t() | nil,
          :products => list(GoogleApi.Content.V21.Model.AccountStatusProducts.t()) | nil,
          :websiteClaimed => boolean() | nil
        }

  field(:accountId)

  field(:accountLevelIssues,
    as: GoogleApi.Content.V21.Model.AccountStatusAccountLevelIssue,
    type: :list
  )

  field(:accountManagement)
  field(:kind)
  field(:products, as: GoogleApi.Content.V21.Model.AccountStatusProducts, type: :list)
  field(:websiteClaimed)
end

defimpl Poison.Decoder, for: GoogleApi.Content.V21.Model.AccountStatus do
  def decode(value, options) do
    GoogleApi.Content.V21.Model.AccountStatus.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Content.V21.Model.AccountStatus do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end

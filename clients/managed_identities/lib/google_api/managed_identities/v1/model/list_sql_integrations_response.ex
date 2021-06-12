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

defmodule GoogleApi.ManagedIdentities.V1.Model.ListSqlIntegrationsResponse do
  @moduledoc """
  ListSqlIntegrationsResponse is the response message for ListSqlIntegrations method.

  ## Attributes

  *   `nextPageToken` (*type:* `String.t`, *default:* `nil`) - Token to retrieve the next page of results, or empty if there are no more results in the list.
  *   `sqlIntegrations` (*type:* `list(GoogleApi.ManagedIdentities.V1.Model.SqlIntegration.t)`, *default:* `nil`) - A list of SQLIntegrations of a domain.
  *   `unreachable` (*type:* `list(String.t)`, *default:* `nil`) - A list of locations that could not be reached.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :nextPageToken => String.t() | nil,
          :sqlIntegrations => list(GoogleApi.ManagedIdentities.V1.Model.SqlIntegration.t()) | nil,
          :unreachable => list(String.t()) | nil
        }

  field(:nextPageToken)
  field(:sqlIntegrations, as: GoogleApi.ManagedIdentities.V1.Model.SqlIntegration, type: :list)
  field(:unreachable, type: :list)
end

defimpl Poison.Decoder, for: GoogleApi.ManagedIdentities.V1.Model.ListSqlIntegrationsResponse do
  def decode(value, options) do
    GoogleApi.ManagedIdentities.V1.Model.ListSqlIntegrationsResponse.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.ManagedIdentities.V1.Model.ListSqlIntegrationsResponse do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end

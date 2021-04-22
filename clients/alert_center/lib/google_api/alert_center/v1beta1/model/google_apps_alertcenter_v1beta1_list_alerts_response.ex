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

defmodule GoogleApi.AlertCenter.V1beta1.Model.GoogleAppsAlertcenterV1beta1ListAlertsResponse do
  @moduledoc """
  Response message for an alert listing request.

  ## Attributes

  *   `alerts` (*type:* `list(GoogleApi.AlertCenter.V1beta1.Model.GoogleAppsAlertcenterV1beta1Alert.t)`, *default:* `nil`) - The list of alerts.
  *   `nextPageToken` (*type:* `String.t`, *default:* `nil`) - The token for the next page. If not empty, indicates that there may be more alerts that match the listing request; this value can be used in a subsequent ListAlertsRequest to get alerts continuing from last result of the current list call.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :alerts =>
            list(GoogleApi.AlertCenter.V1beta1.Model.GoogleAppsAlertcenterV1beta1Alert.t()) | nil,
          :nextPageToken => String.t() | nil
        }

  field(:alerts,
    as: GoogleApi.AlertCenter.V1beta1.Model.GoogleAppsAlertcenterV1beta1Alert,
    type: :list
  )

  field(:nextPageToken)
end

defimpl Poison.Decoder,
  for: GoogleApi.AlertCenter.V1beta1.Model.GoogleAppsAlertcenterV1beta1ListAlertsResponse do
  def decode(value, options) do
    GoogleApi.AlertCenter.V1beta1.Model.GoogleAppsAlertcenterV1beta1ListAlertsResponse.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.AlertCenter.V1beta1.Model.GoogleAppsAlertcenterV1beta1ListAlertsResponse do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
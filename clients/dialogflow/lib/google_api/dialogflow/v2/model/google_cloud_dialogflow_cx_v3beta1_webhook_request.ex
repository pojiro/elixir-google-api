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

defmodule GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowCxV3beta1WebhookRequest do
  @moduledoc """
  The request message for a webhook call.

  ## Attributes

  *   `detectIntentResponseId` (*type:* `String.t`, *default:* `nil`) - Always present. The unique identifier of the DetectIntentResponse that will be returned to the API caller.
  *   `fulfillmentInfo` (*type:* `GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowCxV3beta1WebhookRequestFulfillmentInfo.t`, *default:* `nil`) - Always present. Information about the fulfillment that triggered this webhook call.
  *   `intentInfo` (*type:* `GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowCxV3beta1WebhookRequestIntentInfo.t`, *default:* `nil`) - Information about the last matched intent.
  *   `messages` (*type:* `list(GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowCxV3beta1ResponseMessage.t)`, *default:* `nil`) - The list of rich message responses to present to the user. Webhook can choose to append or replace this list in WebhookResponse.fulfillment_response;
  *   `pageInfo` (*type:* `GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowCxV3beta1PageInfo.t`, *default:* `nil`) - Information about page status.
  *   `payload` (*type:* `map()`, *default:* `nil`) - Custom data set in QueryParameters.payload.
  *   `sentimentAnalysisResult` (*type:* `GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowCxV3beta1WebhookRequestSentimentAnalysisResult.t`, *default:* `nil`) - The sentiment analysis result of the current user request. The field is filled when sentiment analysis is configured to be enabled for the request.
  *   `sessionInfo` (*type:* `GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowCxV3beta1SessionInfo.t`, *default:* `nil`) - Information about session status.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :detectIntentResponseId => String.t(),
          :fulfillmentInfo =>
            GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowCxV3beta1WebhookRequestFulfillmentInfo.t(),
          :intentInfo =>
            GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowCxV3beta1WebhookRequestIntentInfo.t(),
          :messages =>
            list(GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowCxV3beta1ResponseMessage.t()),
          :pageInfo => GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowCxV3beta1PageInfo.t(),
          :payload => map(),
          :sentimentAnalysisResult =>
            GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowCxV3beta1WebhookRequestSentimentAnalysisResult.t(),
          :sessionInfo =>
            GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowCxV3beta1SessionInfo.t()
        }

  field(:detectIntentResponseId)

  field(:fulfillmentInfo,
    as: GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowCxV3beta1WebhookRequestFulfillmentInfo
  )

  field(:intentInfo,
    as: GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowCxV3beta1WebhookRequestIntentInfo
  )

  field(:messages,
    as: GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowCxV3beta1ResponseMessage,
    type: :list
  )

  field(:pageInfo, as: GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowCxV3beta1PageInfo)
  field(:payload, type: :map)

  field(:sentimentAnalysisResult,
    as:
      GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowCxV3beta1WebhookRequestSentimentAnalysisResult
  )

  field(:sessionInfo, as: GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowCxV3beta1SessionInfo)
end

defimpl Poison.Decoder,
  for: GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowCxV3beta1WebhookRequest do
  def decode(value, options) do
    GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowCxV3beta1WebhookRequest.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowCxV3beta1WebhookRequest do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end

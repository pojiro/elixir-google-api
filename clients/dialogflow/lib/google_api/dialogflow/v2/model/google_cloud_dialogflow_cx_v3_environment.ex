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

defmodule GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowCxV3Environment do
  @moduledoc """
  Represents an environment for an agent. You can create multiple versions of your agent and publish them to separate environments. When you edit an agent, you are editing the draft agent. At any point, you can save the draft agent as an agent version, which is an immutable snapshot of your agent. When you save the draft agent, it is published to the default environment. When you create agent versions, you can publish them to custom environments. You can create a variety of custom environments for testing, development, production, etc.

  ## Attributes

  *   `description` (*type:* `String.t`, *default:* `nil`) - The human-readable description of the environment. The maximum length is 500 characters. If exceeded, the request is rejected.
  *   `displayName` (*type:* `String.t`, *default:* `nil`) - Required. The human-readable name of the environment (unique in an agent). Limit of 64 characters.
  *   `name` (*type:* `String.t`, *default:* `nil`) - The name of the environment. Format: `projects//locations//agents//environments/`.
  *   `testCasesConfig` (*type:* `GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowCxV3EnvironmentTestCasesConfig.t`, *default:* `nil`) - The test cases config for continuous tests of this environment.
  *   `updateTime` (*type:* `DateTime.t`, *default:* `nil`) - Output only. Update time of this environment.
  *   `versionConfigs` (*type:* `list(GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowCxV3EnvironmentVersionConfig.t)`, *default:* `nil`) - Required. A list of configurations for flow versions. You should include version configs for all flows that are reachable from `Start Flow` in the agent. Otherwise, an error will be returned.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :description => String.t() | nil,
          :displayName => String.t() | nil,
          :name => String.t() | nil,
          :testCasesConfig =>
            GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowCxV3EnvironmentTestCasesConfig.t()
            | nil,
          :updateTime => DateTime.t() | nil,
          :versionConfigs =>
            list(
              GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowCxV3EnvironmentVersionConfig.t()
            )
            | nil
        }

  field(:description)
  field(:displayName)
  field(:name)

  field(:testCasesConfig,
    as: GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowCxV3EnvironmentTestCasesConfig
  )

  field(:updateTime, as: DateTime)

  field(:versionConfigs,
    as: GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowCxV3EnvironmentVersionConfig,
    type: :list
  )
end

defimpl Poison.Decoder, for: GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowCxV3Environment do
  def decode(value, options) do
    GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowCxV3Environment.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.Dialogflow.V2.Model.GoogleCloudDialogflowCxV3Environment do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end

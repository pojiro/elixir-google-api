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

defmodule GoogleApi.DataLabeling.V1beta1.Model.GoogleCloudDatalabelingV1beta1Instruction do
  @moduledoc """
  Instruction of how to perform the labeling task for human operators. Currently only PDF instruction is supported.

  ## Attributes

  *   `blockingResources` (*type:* `list(String.t)`, *default:* `nil`) - Output only. The names of any related resources that are blocking changes to the instruction.
  *   `createTime` (*type:* `DateTime.t`, *default:* `nil`) - Output only. Creation time of instruction.
  *   `csvInstruction` (*type:* `GoogleApi.DataLabeling.V1beta1.Model.GoogleCloudDatalabelingV1beta1CsvInstruction.t`, *default:* `nil`) - Deprecated: this instruction format is not supported any more. Instruction from a CSV file, such as for classification task. The CSV file should have exact two columns, in the following format: * The first column is labeled data, such as an image reference, text. * The second column is comma separated labels associated with data.
  *   `dataType` (*type:* `String.t`, *default:* `nil`) - Required. The data type of this instruction.
  *   `description` (*type:* `String.t`, *default:* `nil`) - Optional. User-provided description of the instruction. The description can be up to 10000 characters long.
  *   `displayName` (*type:* `String.t`, *default:* `nil`) - Required. The display name of the instruction. Maximum of 64 characters.
  *   `name` (*type:* `String.t`, *default:* `nil`) - Output only. Instruction resource name, format: projects/{project_id}/instructions/{instruction_id}
  *   `pdfInstruction` (*type:* `GoogleApi.DataLabeling.V1beta1.Model.GoogleCloudDatalabelingV1beta1PdfInstruction.t`, *default:* `nil`) - Instruction from a PDF document. The PDF should be in a Cloud Storage bucket.
  *   `updateTime` (*type:* `DateTime.t`, *default:* `nil`) - Output only. Last update time of instruction.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :blockingResources => list(String.t()),
          :createTime => DateTime.t(),
          :csvInstruction =>
            GoogleApi.DataLabeling.V1beta1.Model.GoogleCloudDatalabelingV1beta1CsvInstruction.t(),
          :dataType => String.t(),
          :description => String.t(),
          :displayName => String.t(),
          :name => String.t(),
          :pdfInstruction =>
            GoogleApi.DataLabeling.V1beta1.Model.GoogleCloudDatalabelingV1beta1PdfInstruction.t(),
          :updateTime => DateTime.t()
        }

  field(:blockingResources, type: :list)
  field(:createTime, as: DateTime)

  field(:csvInstruction,
    as: GoogleApi.DataLabeling.V1beta1.Model.GoogleCloudDatalabelingV1beta1CsvInstruction
  )

  field(:dataType)
  field(:description)
  field(:displayName)
  field(:name)

  field(:pdfInstruction,
    as: GoogleApi.DataLabeling.V1beta1.Model.GoogleCloudDatalabelingV1beta1PdfInstruction
  )

  field(:updateTime, as: DateTime)
end

defimpl Poison.Decoder,
  for: GoogleApi.DataLabeling.V1beta1.Model.GoogleCloudDatalabelingV1beta1Instruction do
  def decode(value, options) do
    GoogleApi.DataLabeling.V1beta1.Model.GoogleCloudDatalabelingV1beta1Instruction.decode(
      value,
      options
    )
  end
end

defimpl Poison.Encoder,
  for: GoogleApi.DataLabeling.V1beta1.Model.GoogleCloudDatalabelingV1beta1Instruction do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end
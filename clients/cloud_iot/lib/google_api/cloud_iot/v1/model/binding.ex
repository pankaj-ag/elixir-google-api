# Copyright 2017 Google Inc.
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

# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule GoogleApi.CloudIot.V1.Model.Binding do
  @moduledoc """
  Associates &#x60;members&#x60; with a &#x60;role&#x60;.

  ## Attributes

  - condition (Expr): The condition that is associated with this binding. NOTE: an unsatisfied condition will not allow user access via current binding. Different bindings, including their conditions, are examined independently. Defaults to: `null`.
  - members ([String.t]): Specifies the identities requesting access for a Cloud Platform resource. &#x60;members&#x60; can have the following values:  * &#x60;allUsers&#x60;: A special identifier that represents anyone who is    on the internet; with or without a Google account.  * &#x60;allAuthenticatedUsers&#x60;: A special identifier that represents anyone    who is authenticated with a Google account or a service account.  * &#x60;user:{emailid}&#x60;: An email address that represents a specific Google    account. For example, &#x60;alice@gmail.com&#x60; .   * &#x60;serviceAccount:{emailid}&#x60;: An email address that represents a service    account. For example, &#x60;my-other-app@appspot.gserviceaccount.com&#x60;.  * &#x60;group:{emailid}&#x60;: An email address that represents a Google group.    For example, &#x60;admins@example.com&#x60;.   * &#x60;domain:{domain}&#x60;: The G Suite domain (primary) that represents all the    users of that domain. For example, &#x60;google.com&#x60; or &#x60;example.com&#x60;.   Defaults to: `null`.
  - role (String.t): Role that is assigned to &#x60;members&#x60;. For example, &#x60;roles/viewer&#x60;, &#x60;roles/editor&#x60;, or &#x60;roles/owner&#x60;. Defaults to: `null`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
          :condition => GoogleApi.CloudIot.V1.Model.Expr.t(),
          :members => list(any()),
          :role => any()
        }

  field(:condition, as: GoogleApi.CloudIot.V1.Model.Expr)
  field(:members, type: :list)
  field(:role)
end

defimpl Poison.Decoder, for: GoogleApi.CloudIot.V1.Model.Binding do
  def decode(value, options) do
    GoogleApi.CloudIot.V1.Model.Binding.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.CloudIot.V1.Model.Binding do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end

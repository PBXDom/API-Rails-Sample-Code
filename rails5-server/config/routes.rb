=begin
<PBXDom API>

OpenAPI spec version: 2.1.0

Generated by: https://github.com/swagger-api/swagger-codegen.git

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.

=end
Rails.application.routes.draw do

  def add_swagger_route http_method, path, opts = {}
    full_path = path.gsub(/{(.*?)}/, ':\1')
    match full_path, to: "#{opts.fetch(:controller_name)}##{opts[:action_name]}", via: http_method
  end

  add_swagger_route 'GET', '/Calls', controller_name: 'default', action_name: 'calls_get'
  add_swagger_route 'GET', '/Features/charts', controller_name: 'default', action_name: 'features_charts_get'
  add_swagger_route 'GET', '/Features/reports', controller_name: 'default', action_name: 'features_reports_get'
  add_swagger_route 'GET', '/Features/widget', controller_name: 'default', action_name: 'features_widget_get'
end

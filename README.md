Vagrant Cookbook
================
Install Vagrant plus plugins


Requirements
------------
None

Attributes
----------
TODO: List you cookbook attributes here.

e.g.
<table>
  <tr>
    <th>Key</th>
    <th>Type</th>
    <th>Description</th>
    <th>Default</th>
  </tr>
  <tr>
    <td><tt>['vagrant']['hash']</tt></td>
    <td>String</td>
    <td>The hash version to install</td>
    <td><tt>64e360814c3ad960d810456add977fd4c7d47ce6</tt></td>
  </tr>
</table>

Usage
-----
#### vagrant::default

Just include `vagrant::default` in your node's `run_list`:

```json
{
  "name":"my_node",
  "run_list": [
    "recipe[vagrant::default]"
  ]
}
```

Contributing
------------
1. Fork the repository on Github
2. Create a named feature branch (like `add_component_x`)
3. Write you change
4. Write tests for your change (if applicable)
5. Run the tests, ensuring they all pass
6. Submit a Pull Request using Github

License and Authors
-------------------
Authors: Tom Howe

Licensed under the Apache License, Version 2.0 (the "License"); you may
not use this file except in compliance with the License. You may obtain
a copy of the License at

http://www.apache.org/licenses/LICENSE-2.0
Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.

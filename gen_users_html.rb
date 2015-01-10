#!/usr/bin/env ruby
require 'yaml'

users = YAML.load_file('users.yml')

html = File.open('users.html', 'w')
users["users"].each do |user|
  name = user["name"]
  html.puts %Q{<li class="col-md-6 text-left"><i class="fa fa-user"></i> #{name}</li></li>}
end
html.close



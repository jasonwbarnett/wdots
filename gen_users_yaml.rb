#!/usr/bin/env ruby
require 'yaml'

users = File.read('users.txt').split("\n")

users = users.inject([]) do |memo,user|
  memo << {"name" => user, "rank" => "unranked"}
  memo
end

users.sort_by! { |x| x["name"] }
users = ({"users" => users}).to_yaml

File.open('users.yml', 'w') {|f| f.write(users) }


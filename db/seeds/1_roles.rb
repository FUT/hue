%w{anonym user admin}.each do |role|
  Role.create name: role
end

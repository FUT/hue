roles = Role.all

roles.each do |role|
  3.times do |i|
    role.users.create email: "#{role.name.downcase}#{i}@example.com", password: 'secret'
  end
end

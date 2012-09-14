require 'database_cleaner'

DatabaseCleaner.strategy = :truncation
DatabaseCleaner.clean

Dir['db/seeds/*.rb'].sort.each do |seed|
  puts "[SEEDS] #{ seed[/[a-z][a-z_]*.rb/] }"
  require File.join(Rails.root, seed)
end

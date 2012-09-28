# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


base_dir = "#{Rails.root}/db/data"

bulk_load = [SkillType]

bulk_load.each do |table|
  if table.first.nil? # only bulk load into empty tables
    f = File.new "#{base_dir}/#{table.table_name}.sql"

    while statements = f.gets("") do
     ActiveRecord::Base.connection.execute(statements)
    end
    table.all.each { |t| t.created_at = Time.now }
  end
end
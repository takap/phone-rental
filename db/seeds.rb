# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

require 'csv'

CSV.foreach('db/seeds/carriers.csv') do |row|
  Carrier.create(
      id: row[0],
      name: row[1],
      name_kana: row[2],
  )
end

CSV.foreach('db/seeds/makers.csv') do |row|
  Maker.create(
      id: row[0],
      name: row[1],
      name_kana: row[2],
  )
end

CSV.foreach('db/seeds/categories.csv') do |row|
  Category.create(
      id: row[0],
      name: row[1],
  )
end

CSV.foreach('db/seeds/groups.csv') do |row|
  Group.create(
      id: row[0],
      name: row[1],
      name_kana: row[2],
  )
end

CSV.foreach('db/seeds/screen_densities.csv') do |row|
  ScreenDensity.create(
      id: row[0],
      size: row[1],
  )
end

CSV.foreach('db/seeds/places.csv') do |row|
  Place.create(
      id: row[0],
      name: row[1],
  )
end

CSV.foreach('db/seeds/terminals.csv') do |row|
  Terminal.create(
      id: row[0],
      name: row[1],
      terminal_master_id: row[2],
      volume: row[3],
      color: row[4],
      phone_number: row[5],
      updated_os: row[6],
      place_id: row[7],
      wifi: row[8],
      created_at: row[9],
      created_at: row[9]
  )
end

CSV.foreach('db/seeds/terminal_masters.csv') do |row|
  TerminalMaster.create(
      id: row[0],
      carrier_id: row[1],
      maker_id: row[2],
      category_id: row[3],
      group_id: row[4],
      model_name: row[5],
      default_os: row[6],
      screen_inch: row[7],
      screen_height: row[8],
      screen_width: row[9],
      screen_density_id: row[10],
      tablet: row[11],
      nfc: row[12],
      release_date: row[13],
      created_at: row[14],
      updated_at: row[14],
  )
end

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

CSV.foreach('db/seeds/groups.csv') do |row|
  Group.create(
      id: row[0],
      name: row[1],
      name_kana: row[2],
  )
end

CSV.foreach('db/seeds/operating_systems.csv') do |row|
  OperatingSystem.create(
      id: row[0],
      version_name: row[1],
      api_level: row[2],
      code_name: row[3],
      created_at: row[4],
      updated_at: row[4],
  )
end

CSV.foreach('db/seeds/screen_densities.csv') do |row|
  ScreenDensity.create(
      id: row[0],
      size: row[1],
  )
end

CSV.foreach('db/seeds/colors.csv') do |row|
  Color.create(
      id: row[0],
      name: row[1],
      hex: row[2],
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
      color_id: row[4],
      phone_number: row[5],
      updated_os_id: row[6],
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
      group_id: row[3],
      model_name: row[4],
      default_os_id: row[5],
      screen_inch: row[6],
      screen_height: row[7],
      screen_width: row[8],
      screen_density_id: row[9],
      tablet: row[10],
      nfc: row[11],
      release_date: row[12],
      created_at: row[13],
      updated_at: row[13],
  )
end

CSV.foreach('db/seeds/divisions.csv') do |row|
  Division.create(
      id: row[0],
      name: row[1],
  )
end

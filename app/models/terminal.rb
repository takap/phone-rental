class Terminal < ActiveRecord::Base
  belongs_to :terminal_master
  belongs_to :place

  def self.find_details_by_category category
    hash = ActiveRecord::Base.connection.select(<<-SQL
        SELECT terminal_id, terminal_name, terminal_master_id, volume, phone_number, wifi, carrier_id, maker_id, category_id, group_id, model_name, default_os, updated_os, screen_inch, screen_width, screen_height, screen_density_id, h.size screen_density, color, release_date, tablet, nfc, carrier_name, maker_name, group_name FROM (
        SELECT terminal_id, terminal_name, terminal_master_id, volume, phone_number, wifi, carrier_id, maker_id, category_id, group_id, model_name, default_os, updated_os, screen_inch, screen_width, screen_height, screen_density_id, color, release_date, tablet, nfc, carrier_name, maker_name, f.name group_name FROM (
        SELECT terminal_id, terminal_name, terminal_master_id, volume, phone_number, wifi, carrier_id, maker_id, category_id, group_id, model_name, default_os, updated_os, screen_inch, screen_width, screen_height, screen_density_id, color, release_date, tablet, nfc, carrier_name, d.name maker_name FROM (
        SELECT terminal_id, terminal_name, terminal_master_id, volume, phone_number, wifi, carrier_id, maker_id, category_id, group_id, model_name, default_os, updated_os, screen_inch, screen_width, screen_height, screen_density_id, color, release_date, tablet, nfc, b.name carrier_name FROM (
        SELECT terminals.id terminal_id, name terminal_name, terminal_master_id, volume, phone_number, wifi, carrier_id, maker_id, category_id, group_id, model_name, default_os, updated_os, screen_inch, screen_width, screen_height, screen_density_id, color, release_date, tablet, nfc FROM terminals LEFT OUTER JOIN terminal_masters ON terminals.terminal_master_id = terminal_masters.id WHERE category_id = #{category}
        ) a LEFT OUTER JOIN carriers b ON a.carrier_id = b.id
        ) c LEFT OUTER JOIN makers d ON c.maker_id = d.id
        ) e LEFT OUTER JOIN groups f ON e.group_id = f.id
        ) g LEFT OUTER JOIN screen_densities h ON g.screen_density_id = h.id;
    SQL
    )
    hash.map() { |item| OpenStruct.new(item) }
  end

  def self.find_detail_by_id(id)
    hash = ActiveRecord::Base.connection.select(<<-SQL
        SELECT terminal_id, terminal_name, terminal_master_id, volume, phone_number, wifi, carrier_id, maker_id, category_id, group_id, model_name, default_os, updated_os, screen_inch, screen_width, screen_height, screen_density_id, h.size screen_density, color, release_date, tablet, nfc, carrier_name, maker_name, group_name FROM (
        SELECT terminal_id, terminal_name, terminal_master_id, volume, phone_number, wifi, carrier_id, maker_id, category_id, group_id, model_name, default_os, updated_os, screen_inch, screen_width, screen_height, screen_density_id, color, release_date, tablet, nfc, carrier_name, maker_name, f.name group_name FROM (
        SELECT terminal_id, terminal_name, terminal_master_id, volume, phone_number, wifi, carrier_id, maker_id, category_id, group_id, model_name, default_os, updated_os, screen_inch, screen_width, screen_height, screen_density_id, color, release_date, tablet, nfc, carrier_name, d.name maker_name FROM (
        SELECT terminal_id, terminal_name, terminal_master_id, volume, phone_number, wifi, carrier_id, maker_id, category_id, group_id, model_name, default_os, updated_os, screen_inch, screen_width, screen_height, screen_density_id, color, release_date, tablet, nfc, b.name carrier_name FROM (
        SELECT terminals.id terminal_id, name terminal_name, terminal_master_id, volume, phone_number, wifi, carrier_id, maker_id, category_id, group_id, model_name, default_os, updated_os, screen_inch, screen_width, screen_height, screen_density_id, color, release_date, tablet, nfc FROM terminals LEFT OUTER JOIN terminal_masters ON terminals.terminal_master_id = terminal_masters.id WHERE terminals.id = #{id}
        ) a LEFT OUTER JOIN carriers b ON a.carrier_id = b.id
        ) c LEFT OUTER JOIN makers d ON c.maker_id = d.id
        ) e LEFT OUTER JOIN groups f ON e.group_id = f.id
        ) g LEFT OUTER JOIN screen_densities h ON g.screen_density_id = h.id;
    SQL
    )
    OpenStruct.new(hash[0])
  end
end

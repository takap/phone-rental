class Terminal < ActiveRecord::Base
  belongs_to :terminal_master
  belongs_to :color
  belongs_to :updated_os, class_name: 'OperatingSystem', foreign_key: 'updated_os_id', validate: true
  belongs_to :place

  def self.find_detail_all
    hash = ActiveRecord::Base.connection.select(<<-SQL
        SELECT terminal_id, terminal_name, terminal_master_id, volume, phone_number, wifi, carrier_id, maker_id, group_id, model_name, default_os_id, updated_os_id, screen_inch, screen_width, screen_height, screen_density_id, release_date, tablet, nfc, carrier_name, maker_name, group_name, default_os_version_name, j.version_name updated_os_version_name FROM (
        SELECT terminal_id, terminal_name, terminal_master_id, volume, phone_number, wifi, carrier_id, maker_id, group_id, model_name, default_os_id, updated_os_id, screen_inch, screen_width, screen_height, screen_density_id, release_date, tablet, nfc, carrier_name, maker_name, group_name, h.version_name default_os_version_name FROM (
        SELECT terminal_id, terminal_name, terminal_master_id, volume, phone_number, wifi, carrier_id, maker_id, group_id, model_name, default_os_id, updated_os_id, screen_inch, screen_width, screen_height, screen_density_id, release_date, tablet, nfc, carrier_name, maker_name, f.name group_name FROM (
        SELECT terminal_id, terminal_name, terminal_master_id, volume, phone_number, wifi, carrier_id, maker_id, group_id, model_name, default_os_id, updated_os_id, screen_inch, screen_width, screen_height, screen_density_id, release_date, tablet, nfc, carrier_name, d.name maker_name FROM (
        SELECT terminal_id, terminal_name, terminal_master_id, volume, phone_number, wifi, carrier_id, maker_id, group_id, model_name, default_os_id, updated_os_id, screen_inch, screen_width, screen_height, screen_density_id, release_date, tablet, nfc, b.name carrier_name FROM (
        SELECT terminals.id terminal_id, name terminal_name, terminal_master_id, volume, phone_number, wifi, carrier_id, maker_id, group_id, model_name, default_os_id, updated_os_id, screen_inch, screen_width, screen_height, screen_density_id, release_date, tablet, nfc FROM terminals LEFT OUTER JOIN terminal_masters ON terminals.terminal_master_id = terminal_masters.id
        ) a LEFT OUTER JOIN carriers b ON a.carrier_id = b.id
        ) c LEFT OUTER JOIN makers d ON c.maker_id = d.id
        ) e LEFT OUTER JOIN groups f ON e.group_id = f.id
        ) g LEFT OUTER JOIN operating_systems h ON g.default_os_id = h.id
        ) i LEFT OUTER JOIN operating_systems j ON i.updated_os_id = j.id;
    SQL
    )
    hash.map() { |item| OpenStruct.new(item) }
  end
end

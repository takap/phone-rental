class CheckState < ActiveRecord::Base
  belongs_to :terminal
  belongs_to :user

  def self.find_detail_all_by_user_id user_id
    hash = ActiveRecord::Base.connection.select(<<-SQL
        SELECT check_id, terminal_id, user_id, status, take_out, note, due_date, check_created_at, check_updated_at, terminal_name, terminal_master_id, volume, color_id, phone_number, place_id, wifi, carrier_id, maker_id, group_id, model_name, carrier_name, carrier_name_kana, maker_name, maker_name_kana, gr.name group_name, gr.name_kana group_name_kana FROM (
        SELECT check_id, terminal_id, user_id, status, take_out, note, due_date, check_created_at, check_updated_at, terminal_name, terminal_master_id, volume, color_id, phone_number, place_id, wifi, carrier_id, maker_id, group_id, model_name, carrier_name, carrier_name_kana, ma.name maker_name, ma.name_kana maker_name_kana FROM (
        SELECT check_id, terminal_id, user_id, status, take_out, note, due_date, check_created_at, check_updated_at, terminal_name, terminal_master_id, volume, color_id, phone_number, place_id, wifi, carrier_id, maker_id, group_id, model_name, ca.name carrier_name, ca.name_kana carrier_name_kana FROM (
        SELECT check_id, terminal_id, user_id, status, take_out, note, due_date, check_created_at, check_updated_at, terminal_name, terminal_master_id, volume, color_id, phone_number, place_id, wifi, carrier_id, maker_id, group_id, model_name FROM (
        SELECT cs.id check_id, terminal_id, user_id, status, take_out, note, due_date, cs.created_at check_created_at, cs.updated_at check_updated_at, name terminal_name, terminal_master_id, volume, color_id, phone_number, place_id, wifi from check_states cs LEFT OUTER JOIN terminals ON cs.terminal_id = terminals.id WHERE user_id = #{user_id}
        ) cst LEFT OUTER JOIN terminal_masters tm ON cst.terminal_master_id = tm.id
        ) cstm LEFT OUTER JOIN carriers ca ON cstm.carrier_id = ca.id
        ) cstmca LEFT OUTER JOIN makers ma ON cstmca.maker_id = ma.id
        ) cstmcama LEFT OUTER JOIN groups gr ON cstmcama.group_id = gr.id;
    SQL
    )
    hash.map() { |item| OpenStruct.new(item) }
  end

end

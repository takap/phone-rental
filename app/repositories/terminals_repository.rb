class TerminalsRepository
  include StatusModule

  def find_all
    terminals = Terminal.find_details
    get_terminal_details(terminals)
  end

  def find_feature
    terminals = Terminal.find_details_by_category PHONE_CATEGORY.FEATURE
    get_terminal_details(terminals)
  end

  def find_ios
    terminals = Terminal.find_details_by_category PHONE_CATEGORY.IOS
    get_terminal_details(terminals)
  end

  def find_android
    terminals = Terminal.find_details_by_category PHONE_CATEGORY.ANDROID
    get_terminal_details(terminals)
  end

  def find_detail_by_id(id)
    terminal = Terminal.find_detail_by_id id
    TerminalDetail.new(
        terminal_id: terminal['terminal_id'],
        terminal_name: terminal['terminal_name'],
        terminal_master_id: terminal['terminal_master_id'],
        volume: terminal['volume'],
        phone_number: terminal['phone_number'],
        sim: terminal['sim'],
        wifi: terminal['wifi'],
        model_name: terminal['model_name'],
        default_os: terminal['default_os'],
        updated_os: terminal['updated_os'],
        screen_inch: terminal['screen_inch'],
        screen_width: terminal['screen_width'],
        screen_height: terminal['screen_height'],
        screen_density: terminal['screen_density'],
        color: terminal['color'],
        release_date: format_date(terminal['release_date']),
        tablet: terminal['tablet'],
        nfc: terminal['nfc'],
        carrier_name: terminal['carrier_name'],
        maker_name: terminal['maker_name'],
        group_name: terminal['group_name'],
        status: terminal['status'],
        note: terminal['note'],
    )
  end

  private
    def get_terminal_details(terminals)
      terminal_entities = []
      terminals.each do |terminal|
        terminal_entity = TerminalDetail.new(
            terminal_id: terminal['terminal_id'],
            terminal_name: terminal['terminal_name'],
            terminal_master_id: terminal['terminal_master_id'],
            volume: terminal['volume'],
            phone_number: terminal['phone_number'],
            sim: terminal['sim'],
            wifi: terminal['wifi'],
            model_name: terminal['model_name'],
            default_os: terminal['default_os'],
            updated_os: terminal['updated_os'],
            screen_inch: terminal['screen_inch'],
            screen_width: terminal['screen_width'],
            screen_height: terminal['screen_height'],
            screen_density: terminal['screen_density'],
            color: terminal['color'],
            release_date: format_date(terminal['release_date']),
            tablet: terminal['tablet'],
            nfc: terminal['nfc'],
            carrier_name: terminal['carrier_name'],
            maker_name: terminal['maker_name'],
            group_name: terminal['group_name'],
            status: check_status(terminal),
            note: terminal['note'],
        )
        terminal_entities << terminal_entity
      end
      terminal_entities
    end
end

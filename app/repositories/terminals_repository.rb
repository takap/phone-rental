class TerminalsRepository
  def find_feature
    Terminal.find_details_by_category PHONE_CATEGORY.FEATURE
  end

  def find_ios
    Terminal.find_details_by_category PHONE_CATEGORY.IOS
  end

  def find_android
    Terminal.find_details_by_category PHONE_CATEGORY.ANDROID
  end

  def find_detail_by_id(id)
    Terminal.find_detail_by_id id
  end
end

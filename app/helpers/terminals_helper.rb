module TerminalsHelper
  def check_back_path(category_id)
    case category_id
      when PHONE_CATEGORY.FEATURE
        terminals_feature_path
      when PHONE_CATEGORY.IOS
        terminals_ios_path
      when PHONE_CATEGORY.ANDROID
        terminals_android_path
    end
  end
end

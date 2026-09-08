Alchemy.configure do |config|
  config.default_language.tap do |default_language|
    default_language.code = "en"
    default_language.name = "English"
    default_language.page_layout = "index"
    default_language.frontpage_name = "Index"
  end

  # The storage adapter for Pictures and Attachments
  config.storage_adapter = "dragonfly"
end

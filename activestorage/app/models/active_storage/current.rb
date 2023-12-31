# frozen_string_literal: true

class ActiveStorage::Current < ActiveSupport::CurrentAttributes # :nodoc:
  attribute :url_options

  def host=(host)
    ActiveStorage.deprecator.warn("ActiveStorage::Current.host= is deprecated, instead use ActiveStorage::Current.url_options=")
    self.url_options = { host: host }
  end

  def host
    ActiveStorage.deprecator.warn("ActiveStorage::Current.host is deprecated, instead use ActiveStorage::Current.url_options")
    self.url_options&.dig(:host)
  end
end

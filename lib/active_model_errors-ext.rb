require "active_model_errors-ext/version"

module ActiveModel
  class Errors
    def full_hash_messages
      messages = Hash.new
      self.messages.each do |key, key_messages|
        messages[key] = []
        key_messages.each do |message|
          messages[key] << full_message(key, message)
        end
      end
      messages
    end
  end
end

module MuteUpdatedAt
  module Callback

    def skip_timestamping
      unless self.new_record?
        self.record_timestamps = false
      end

      true
    end

    def set_updated_at
      self.update_attribute(:updated_at, Time.zone.now)
    end

    def mute_updated_at
      require 'mute_updated_at/callback'
      include MuteUpdatedAt::Callback

      class_eval do
        before_save :skip_timestamping
      end
    end

  end
end


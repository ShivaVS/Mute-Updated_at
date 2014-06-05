require 'active_support/concern'
module MuteUpdatedAt
  extend ActiveSupport::Concern

  module ClassMethods
    # Do not touch updated_at when updating the record
    # Just call mute_updated_at in model where we do not want updated_at to be updated when
    # updating the record
    #
    def mute_updated_at
      class_eval do
        before_save :skip_timestamping
      end
    end
  end

  module InstanceMethods
    # callback Set record_timestamps to false before updating
    def skip_timestamping
      unless new_record?
        self.record_timestamps = false
      end
      true
    end

    # Do not update updated_at and update the record
    #
    def skip_updated_at_and_save
      unless new_record?
        self.record_timestamps = false
        save!
        self.record_timestamps = true
      end
    end

    # Explicitly update updated_at
    #
    def set_updated_at
      touch
    end
  end

  ActiveRecord::Base.send(:include, MuteUpdatedAt)
end

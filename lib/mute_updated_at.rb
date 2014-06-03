module MuteUpdatedAt

  if defined?(ActiveRecord::Base)
    require 'mute_updated_at/callback'
    ActiveRecord::Base.extend MuteUpdatedAt::Callback
  end

end

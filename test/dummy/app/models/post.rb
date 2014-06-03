class Post < ActiveRecord::Base
  attr_accessible :title

  mute_updated_at
end

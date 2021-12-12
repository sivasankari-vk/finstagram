class FinstagramPost < ActiveRecord::Base

    validates :photo_url, :user, presence: true
  
end
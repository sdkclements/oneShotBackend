class Shot < ActiveRecord::Base
  belongs_to :tab
  has_many :chasers
end

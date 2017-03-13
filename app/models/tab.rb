class Tab < ActiveRecord::Base
  has_many :shots, dependent: :destroy
end

class Family < ActiveRecord::Base
  belongs_to :user

  has_one :mother
  has_one :father
  has_many :babies
end

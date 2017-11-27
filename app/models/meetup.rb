class Meetup < ActiveRecord::Base

 validates :members, presence: true
 validates :users, presence: true

 has_many :members
 has_many :users,
 through: :members
end

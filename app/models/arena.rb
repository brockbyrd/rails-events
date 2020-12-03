class Arena < ApplicationRecord
    has_many :events
    has_many :users, through: :events
end

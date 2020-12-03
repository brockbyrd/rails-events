class Arena < ApplicationRecord
    has_many :events
    has_many :users, through: :events
    validates :name, :city, :state, presence: true
    validates :name, uniqueness: true
end

class Arena < ApplicationRecord
    has_many :events
    has_many :users, through: :events
    validates :name, :city, :state, presence: true
    validates :name, uniqueness: true
    enum capacity: [:"1000-10000", :"10000-25000", :"25000-50000", :"50000-100000"]
end

class Event < ApplicationRecord
    belongs_to :arena
    belongs_to :user
end

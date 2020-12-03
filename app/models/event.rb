class Event < ApplicationRecord
    belongs_to :arena
    belongs_to :user
    scope :sports, -> { where(:event_type => "Sports") }
    scope :comedy, -> { where(:event_type => "Comedy") }
    scope :concert, -> { where(:event_type => "Concert") }
end

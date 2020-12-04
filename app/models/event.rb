class Event < ApplicationRecord
    belongs_to :arena
    belongs_to :user
    belongs_to :type
    accepts_nested_attributes_for :type
    
    scope :sports, -> { where(:type_id => "3") }
    scope :comedy, -> { where(:event_type => "Comedy") }
    scope :concert, -> { where(:event_type => "Concert") }
end

class Event < ApplicationRecord
    belongs_to :arena
    belongs_to :user
    belongs_to :type
    accepts_nested_attributes_for :type, :reject_if => lambda { |a| a[:name].blank?}, :allow_destroy => true

    scope :comedy, -> { where(:type_id => "1") }
    scope :concert, -> { where(:type_id => "2") }
    scope :sports, -> { where(:type_id => "3") }
    scope :festival, -> { where(:type_id => "4")}
    scope :fundraiser, -> { where(:type_id => "5")}

end

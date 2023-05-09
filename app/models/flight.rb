class Flight < ApplicationRecord
    belongs_to :plane 
    has_many :reservations
    has_many :users, :through => :reservations
end

class Visual < ApplicationRecord
    has_many :tracks 
    has_many :users, through: :tracks
end

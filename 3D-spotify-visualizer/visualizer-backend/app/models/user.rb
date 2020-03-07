class User < ApplicationRecord
    has_many :tracks 
    has_many :visuals, through: :tracks
    
end

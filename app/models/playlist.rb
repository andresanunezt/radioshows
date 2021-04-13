class Playlist < ActiveRecord::Base
    belongs_to :dj
    
    validates :title, :content, presence: true

    
    end
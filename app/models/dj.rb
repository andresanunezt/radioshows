class Dj < ActiveRecord::Base
has_many :playlists

has_secure_password

validates :username, :name, presence: true
validates :username, uniqueness: true

end
class Dj < ActiveRecord::Base
has_many :playlists

has_secure_password

validates :username, :name, :dj_name, presence: true
validates :username, :dj_name, uniqueness: true

end
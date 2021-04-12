class RadioStation < ActiveRecord::Base
has_many :shows

has_secure_password

end
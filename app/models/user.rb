class User < ApplicationRecord
    has_many :to_dos
    has_secure_password
end

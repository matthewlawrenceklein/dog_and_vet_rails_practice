class Dog < ApplicationRecord
    has_many :appointments
    has_many :vets, through: :appointments
end

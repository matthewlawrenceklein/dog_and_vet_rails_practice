class Dog < ApplicationRecord
    has_many :appointments
    has_many :vets, through: :appointments

    validates :name, presence: true 
    validates :breed, presence: true 
end

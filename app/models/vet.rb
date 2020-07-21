class Vet < ApplicationRecord
    has_many :appointments
    has_many :dogs, through: :appointments

    validates :name, numericality: false 
end

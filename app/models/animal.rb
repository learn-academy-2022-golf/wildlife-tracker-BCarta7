class Animal < ApplicationRecord
    has_many :sightings
    validates :common_name, :scientific_binomial, presence: true
    validates :common_name, :scientific_binomial, uniqueness: true
    validate :check_name_and_binomial

    def check_name_and_binomial
        errors.add(:common_name, "can't be the same as scientific binomial") if common_name == scientific_binomial
    end
end

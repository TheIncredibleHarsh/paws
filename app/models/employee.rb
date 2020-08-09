class Employee < ApplicationRecord
    belongs_to :shelter
    has_many :animals
end

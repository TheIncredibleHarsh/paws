class Shelter < ApplicationRecord
    has_many :employees
    has_many :animals
end

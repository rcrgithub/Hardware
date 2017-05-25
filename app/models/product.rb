class Product < ApplicationRecord
    belongs_to :store
    validates :name, :description, :price, :quantity, presence: true
    attr_accessor :remember
    attr_reader :remember
end

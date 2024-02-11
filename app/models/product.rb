# frozen_string_literal: true

class Product < ApplicationRecord
  with_options presence: true do
    validates :name
    validates :body
    validates :price
    validates :action
    validates :image
  end
  has_one_attached :image
end

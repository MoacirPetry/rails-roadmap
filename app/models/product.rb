class Product < ApplicationRecord
  belongs_to :category
  validates :name, presence: true, uniqueness: true, length: { maximum: 30, too_long: "-> %{count} characters is the maximum allowed", minimum: 2, too_short: "-> %{count} characters is the minimum allowed" }
  validates :category, presence: true
end

class Quote < ApplicationRecord
  validates :name, presence: true
  belongs_to :company

  scope :ordered, -> { order(id: :desc) }

  broadcasts_to ->(quote) { "quotes" }, inserts_by: :prepend
end

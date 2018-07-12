class Portfolio < ApplicationRecord

  validates_presence_of :title, :body, :main_image, :thumb_image

  # Alternative (not as good practice) to custom
  def self.angular
    where(subtitle: 'Angular')
  end

  # Custom scope
  scope :ruby_on_rails_portfolio_items, -> {where(subtitle: 'Rails')}
end

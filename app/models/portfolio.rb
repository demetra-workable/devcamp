class Portfolio < ApplicationRecord

  validates_presence_of :title, :body, :main_image, :thumb_image

  # Alternative (not as good practice) custom scoe
  def self.angular
    where(subtitle: 'Angular')
  end

  # Custom scope
  scope :ruby_on_rails_portfolio_items, -> {where(subtitle: 'Rails')}

  # after def new has been called
  after_initialize :set_defaults

  def set_defaults
    # ||= used insted of = in order not to override set images
    # if self.main_image == nil
    #   self.main_image = ...
    # end
    self.main_image ||= "http://via.placeholder.com/600x400"
    self.thumb_image ||= "http://via.placeholder.com/300x150"
  end

end

class Store < ActiveRecord::Base

  has_many :employees
  validates :name, length: {minimum: 3, maximum: 50}
  validates :annual_revenue, numericality: {only_integer: true, 
                                             greater_than_or_equal_to: 0}
  validate :store_must_have_one_type

  def store_must_have_one_type
    if !mens_apparel && !womens_apparel
      errors.add(:mens_apparel, "You must sell either men's apparel...")
      errors.add(:womens_apparel, "Or women's apparel.")
    end
  end

end
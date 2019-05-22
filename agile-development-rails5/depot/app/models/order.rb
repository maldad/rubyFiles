class Order < ApplicationRecord
  has_many :line_items, dependent: :destroy
  enum pay_type: {
    "Check" => 0,
    "Credit card" => 1,
    "Purchase order" => 2
  }
  validates :name, :addres, :email, presence: true
  validates :pay_type, inclusion: pay_types.keys

  def add_line_items_from_cart(cart)
    cart.line_items.each do | item |
      item.cart_id = nil
      line_items << item #add item to line_items object to be stored in DB
    end
  end
end

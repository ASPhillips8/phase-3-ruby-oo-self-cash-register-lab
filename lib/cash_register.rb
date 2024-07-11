require "pry"

class CashRegister

  attr_accessor :discount, :items, :total, :last_transaction

  def initialize(discount = 0)
    @discount = discount
    @items = []
    @total = 0
  end

  def add_item(title, price, quantity = 1)
    cost_items = price * quantity
    self.items << title
    self.total += cost_items
  end

  def apply_discount
    if self.discount != 0
      discount_percentage = (self.discount.to_f / 100.0)
      discounted_total = self.total * (1 - discount_percentage)
      self.total = discounted_total.to_i
      "After the discount, the total comes to $#{self.total}."
    else
       "There is no discount to apply."
    end
  end


end

# order1 = CashRegister.new()
# order1.add_item("Beer", 6)

# binding.pry

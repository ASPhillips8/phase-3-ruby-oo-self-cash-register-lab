require "pry"

class CashRegister

  attr_accessor :discount, :items, :total

  def initialize(discount = 0)
    @discount = discount
    @items = []
    @total = 0

  end

end

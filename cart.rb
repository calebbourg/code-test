class Item
  attr_reader :name, :price

  def initialize(name, price)
    @name = name
    @price = price
  end
end

class Cart
  def initialize
    @items = []
  end

  def total
    @items.map(&:price).inject(&:+)
  end

  def subtotal
  end

  def tax
  end

  def add_item(item)
    @items << item
  end
end

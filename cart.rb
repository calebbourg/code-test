class Item
  attr_reader :name, :price, :taxable

  def initialize(name, price, taxable = true)
    @name = name
    @price = price
    @taxable = taxable
  end
end

class Cart

  CURRENT_TAX = 0.10

  def initialize
    @items = []
  end

  def total
    subtotal + tax 
  end

  def subtotal
    @items.map(&:price).inject(&:+)
  end

  def tax
    taxables = []
    @items.each { |item| taxables << item if item.taxable }
    taxables.empty? ? 0 : taxables.map(&:price).inject(&:+)*CURRENT_TAX
  end

  def add_item(item)
    @items << item
  end
end


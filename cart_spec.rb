require './cart'

RSpec.describe Cart do
  let(:taxable_item) { Item.new('Chair', 100) }
  let(:non_taxable_item) { Item.new('Carrot', 100, false) }

  # 1) Implement the code that passes this test, assume tax rate of 10%
  describe '#total' do
    it 'returns the total amount from the cart with tax' do
      cart = Cart.new
      cart.add_item(taxable_item)
      cart.add_item(non_taxable_item)
      expect(cart.total).to eq(210)
    end
  end

  describe '#subtotal' do
    it 'returns the total amount from cart without tax' do
      cart = Cart.new
      cart.add_item(taxable_item)
      cart.add_item(non_taxable_item)
      expect(cart.subtotal).to eq(200)
    end
  end

  describe '#tax' do
    it 'returns tax amount for only taxable items' do
      cart = Cart.new
      cart.add_item(taxable_item)
      cart.add_item(non_taxable_item)
      expect(cart.tax).to eq(10)
    end
  end
end

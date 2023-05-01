require 'rails_helper'

RSpec.describe Product, type: :model do
  describe 'Validations' do
    
    before do
      @category = Category.create(name: "Test Category")
      @product = Product.new(
        name: "Test Product",
        price: 9.99,
        quantity: 10,
        category: @category
      )
    end

    it 'saves successfully when all fields are set' do
      expect(@product).to be_valid
    end
    
    it "validates presence of name" do
      @product.name = nil
      expect(@product).to_not be_valid
      expect(@product.errors.full_messages).to include("Name can't be blank")
    end

    it "validates presence of price" do
      @product.price_cents = nil
      expect(@product).to_not be_valid
      expect(@product.errors.full_messages).to include("Price can't be blank")
    end

    it "validates presence of quantity" do
      @product.quantity = nil
      expect(@product).to_not be_valid
      expect(@product.errors.full_messages).to include("Quantity can't be blank")
    end

    it "validates presence of category" do
      @product.category = nil
      expect(@product).to_not be_valid
      expect(@product.errors.full_messages).to include("Category can't be blank")
    end
  end
end

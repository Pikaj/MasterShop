require 'rails_helper'

describe ProductsController do

  describe "POST create" do
    it "creates product" do
      data = {name: 'test', price: 200}
      post :create, {product: data}
      expect(response.status).to eq(201)
    end
  end

  describe "POST create" do
    it "creates product no name" do
      data = {price: 200}
      post :create, {product: data}
      product = assigns(:product)
      expect(product.errors.empty?).to eq(false)
    end
  end


end
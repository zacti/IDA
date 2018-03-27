require 'rails_helper'
	
RSpec.describe User, :type => :model do
	let(:furnitures) { Furniture.new(item: "table", category: "big")}

	describe "associations" do
   		it "check belongs_to user" do
   			expect(furnitures).to belong_to(:user)
   		end
   	end
end
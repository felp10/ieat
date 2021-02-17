require 'rails_helper'
RSpec.describe Restaurant do    
    context 'testing total of products' do
        #let(:restaurant) {FactoryBot.create(:restaurant)}
        #let(:total) { rand(5) }
        #before do
            #(1..total).each {|item| do FactoryBot.create(:product, restaurant: restaurant) } 
        #end
        
        it 'returns total of products for a specific restaurant' do
            restaurant = Restaurant.create(name: 'restaurante 1', address: 'end 1')
            
            product1 = Product.create(name: 'p1', value: 10, restaurant: restaurant)
            product1 = Product.create(name: 'p2', value: 20, restaurant: restaurant)
         
            expect(restaurant.total_of_products).to eq(2)
            #expect(restaurant.total_of_products).to eq(total)
        end
    end
    context 'testing has_many' do
        it {should have_many(:products)}    
    end
end

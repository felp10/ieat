require 'rails_helper'

RSpec.describe Product do
    context 'testing belong_to'do
        it {should belong_to(:restaurant)}        
    end
    context 'testing validate name'do
        it {should validate_presence_of(:name)}
    end    
end
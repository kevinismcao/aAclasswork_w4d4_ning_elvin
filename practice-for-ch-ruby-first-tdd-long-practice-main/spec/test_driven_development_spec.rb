require "test_driven_development"
require "rspec"

require "rspec"

describe '#my_uniq' do
    it 'should return an array' do
        expect(my_uniq([1, 2, 1, 3, 3])).to be_an(Array)
    end

    it 'should return an array with no duplicate' do
        expect(my_uniq([1, 2, 1, 3, 3])).to eq([1, 2, 3])
    end
end

describe 'Array#two_sum' do
    it 'should return an array' do
        expect(([-1, 0, 2, -2, 1]).two_sum).to be_an(Array)
    end
    
    it 'should return an array with no duplicate' do 
        expect(([-1, 0, 2, -2, 1]).two_sum).to eq([[0, 4], [2, 3]])
    end
end


describe 'my_transpose' do
    it "should return an array" do
        expect(my_transpose([[0, 1, 2],[3, 4, 5],[6, 7, 8]])).to be_an(Array)
    end

    it "changes columns to rows" do
        expect(my_transpose ([[0, 1, 2],[3, 4, 5],[6, 7, 8]])).to eq([[0, 3, 6],[1, 4, 7],[2, 5, 8]])
    end
end






require "test_driven_development"
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










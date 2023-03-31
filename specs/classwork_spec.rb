require 'classwork'
require 'rspec'

describe "Array#uniq" do 
    let(:array) { [1, 2, 1, 3, 3] }
    it "requires array" do 
        expects(array.uniq).to be([1,2,3])
    end

    it "returns nil for empty array" do 
        expects([].uniq).to be_nil
    end

end


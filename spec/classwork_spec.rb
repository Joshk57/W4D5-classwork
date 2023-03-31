require 'classwork'
require 'rspec'

describe "#uniq?" do 
    let(:array1) { [1, 2, 1, 3, 3] }
    let(:array2) {[]}

    it "returns uniq numbers" do 
        expect(uniq?(array1)).to eq([1,2,3])
    end

    it "returns nil for empty array" do 
        expect(uniq?([])).to be_empty
    end

end

describe "#my_uniq" do
    let(:array3) { [1, 2, 1, 3, 3] }
    let(:array4) {[]}

    before(:each) do
        expect(array3).not_to receive(:uniq)
    end



    it "returns uniq numbers" do 
        expect(my_uniq(array3)).to eq([1,2,3])
    end

    it "returns nil for empty array" do 
        expect(my_uniq([])).to be_empty
    end
end
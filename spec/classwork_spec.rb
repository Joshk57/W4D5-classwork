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

describe "Array#two_sum" do
    let(:array) {[-1, 0, 2, -2, 1]}
    it "returns the answer" do 
        expect(array.two_sum).to eq([[0,4], [2,3]])
    end

    it "returns nil for empty array" do 
        expect([].two_sum).to be_empty
    end
end

describe "#my_transpose" do   
    let(:array) {[
        [0, 1, 2],
        [3, 4, 5],
        [6, 7, 8]
      ] }

    before(:each) do
        expect(array).not_to receive(:transpose)
    end

    it "returns the answer" do 
        expect(my_transpose(array)).to eq([
            [0, 3, 6],
            [1, 4, 7],
            [2, 5, 8]
          ])
    end
end
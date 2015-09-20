require_relative "another_folder/jeffs_array"
gem 'pry'

describe JeffsArray do
  before :each do
    @jeffs_array = JeffsArray.new([1,2,3,4,5,"a"])
  end

  context "#initialize" do
    it "takes one parameter and returns a JeffsArray object" do
      expect(@jeffs_array).to be_a JeffsArray
    end
  end

  context "#new_pop" do
    it "takes a new_pop method and returns the last item in the array" do
      last_item = @jeffs_array.new_pop
      
      expect(last_item).to eql("a")
    end

    it "takes a new_pop method and reduces the array size by 1" do
      @jeffs_array.new_pop

      expect(@jeffs_array.array.size).to eql(5)
    end

    context "#new_size" do
      it "should return me the size of the jeffs array" do
        expect(@jeffs_array.new_size).to eql(6)
      end
    end
  end
end

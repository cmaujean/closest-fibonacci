require File.expand_path(File.dirname(__FILE__) + '/spec_helper')

describe "ClosestFibonacci" do
  it "adds a closest_fibonacci method to Fixnum" do
    5.should respond_to(:closest_fibonacci)
  end
  
  describe "closest_fibonacci" do
    it "returns the closest number in the fibonacci sequence that is smaller than the given number" do
      156.closest_fibonacci.should == 144
      99.closest_fibonacci.should == 89
    end
  end
  
  describe "is_square?" do
    it "returns true for a number that is square" do
      144.is_square?.should be_true
      89.is_square?.should be_false
    end
    
    it "returns false for a number that is not square" do
      101.is_square?.should be_false
    end
  end
end
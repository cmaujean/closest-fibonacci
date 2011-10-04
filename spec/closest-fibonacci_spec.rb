require File.expand_path(File.dirname(__FILE__) + '/spec_helper')

describe "ClosestFibonacci" do
  it "adds a closest_fibonacci method to Fixnum" do
    5.should respond_to(:closest_fibonacci)
  end
  
  it "returns the closest number in the fibonacci sequence that is smaller than the given number" do
    156.closest_fibonacci.should == 144
    99.closest_fibonacci.should == 89
  end
end

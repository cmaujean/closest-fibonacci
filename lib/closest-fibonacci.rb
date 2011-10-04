Fixnum.class_eval do
  def closest_fibonacci
    self.downto 0 do |n|
      nu = (5 * n**2 + 4)
      nd = (5 * n**2 - 4)
      if is_square(nu) or is_square(nd)
        return n
      end
    end
  end  
  
  private

  # may not work correctly for huge numbers
  def is_square(n)
    return false if not n.kind_of?(Integer)
    return true if Math.sqrt(n).floor**2 == n 
  end
end
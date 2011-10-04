Fixnum.class_eval do
  def closest_fibonacci
    self.downto 0 do |n|
      nu = (5 * n**2 + 4)
      nd = (5 * n**2 - 4)
      if nu.is_square? or nd.is_square?
        return n
      end
    end
  end  

  def is_square?
    return true if Math.sqrt(self).floor**2 == self
  end
end
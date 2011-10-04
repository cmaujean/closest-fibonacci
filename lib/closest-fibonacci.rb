Fixnum.class_eval do
  def closest_fibonacci
    self.downto 0 do |n|
      if (5 * n**2 - 4).is_square? or (5 * n**2 + 4).is_square?
        return n
      end
    end
  end  

  def is_square?
    Math.sqrt(self).floor**2 == self
  end
end
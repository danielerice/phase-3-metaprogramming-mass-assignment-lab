class Person
  
  def initialize attributes_hash
    attributes_hash.each do |key, value|
      self.class.attr_accessor(key)
      self.send("#{key}=", value)
    end
  end
end

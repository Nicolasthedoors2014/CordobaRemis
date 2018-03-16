class Rating < ApplicationRecord
  belongs_to :driver

  def add(value)
    if !value.nil?
      if value == 5
        new_value = self.five + 1
        self.update(five: new_value)
      end
      if value == 4
        new_value = self.four + 1
        self.update(four: new_value)
      end
      if value == 3
        new_value = self.three + 1
        self.update(three: new_value)
      end
      if value == 2
        new_value = self.two + 1
        self.update(two: new_value)
      end
      if value == 1
        new_value = self.one + 1
        self.update(one: new_value)
      end
    end
  end

  def average
    total = self.five + self.four + self.three + self.two + self.one
    if total == 0
      "sin puntuacion"
    else
      result = (self.five*5 + self.four*4 + self.three*3 + self.two*2 + self.one)/total
      if result == 5
        "excelecte"
      elsif result == 4
        "muy bueno"
      elsif result == 3
        "regular"
      elsif result == 2
        "malo"
      elsif result == 1
        "muy malo"
      end
    end
  end
end

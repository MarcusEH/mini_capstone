class Product < ApplicationRecord
  def is_discounted?
    # if price < 10
    #   true
    # else
    #   false
    # end
    price < 10
    #this does the same thing as the 5 lines above
  end

  def tax
    tax_rate = 0.09
    price * tax_rate 
  end

  def total
    price + tax #can just call the method tax like this. you don't need to make an instance variable
  end

  def friendly_total
    total = price + tax
    "The total is $#{total}" 
  end
end

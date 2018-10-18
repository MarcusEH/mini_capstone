class Product < ApplicationRecord
  def is_discounted?
    if price < 10
      true
    else
      false
    end
  end

  def tax
    @tax = price * 0.09 
  end

  def total
    price + @tax
  end

  def friendly_total
    total = price + @tax
    "The total is $#{total}" 
  end
end

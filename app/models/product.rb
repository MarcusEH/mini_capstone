class Product < ApplicationRecord
  
  # validates :name, :description, presence: true
  # validates :name, uniqueness: true

  # # validates :price, presence: true #this is not really necessary since numericality does not allow nil.

  # validates :price, numericality: { greater_than: 0 }
  # validates :price, length: { maximum: 9}

  # # validates :description, presence: true
  # validates :description, length: { minimum: 10}

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

  def supplier
    Supplier.find_by(id: supplier_id)
  end

end

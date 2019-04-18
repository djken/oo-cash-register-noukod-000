
class CashRegister
  attr_accessor :total, :discount
  
  def initialize(discount = 0)
    @array_items = []
    @total = 0
    @discount = discount
    @all_added_items = []
    @transaction = []
  end
  
  def add_item(title, price, item_qty = 1)
    self.total += price * item_qty
    @transaction.push(price)
    
    # i = item_qty
    if item_qty == 0 do @all_added_items << title
      item_qty -= 1
    end
  end
  
  def apply_discount 
    if @discount == 0 
      "There is no discount to apply."
    else
      self.total -= @total * @discount / 100
      return "After the discount, the total comes to $#{@total}."
    end
  end
  
  def items
    @all_added_items
  end
  
  def void_last_transaction
    self.total = @total - @transaction.delete_at(-1)
  end
end
require 'pry'
class CashRegister
    attr_accessor :discount, :total, :items, :last_item
    def initialize(discount = nil)
        @total = 0
        @items = []
        @discount = discount
    end

    def add_item(item, price, quant = 1)
        @last_item = price * quant
        @total += (price * quant)
        while (quant > 0) do
            @items << item
            quant-=1
        end 
    end

    def apply_discount
        if(@discount)
       @total = @total - @total * @discount / 100
       "After the discount, the total comes to $#{@total}."
        else
            "There is no discount to apply."
        end
    end

    def items
        @items
    end

    def void_last_transaction
        @total = @total - @last_item
    end

end


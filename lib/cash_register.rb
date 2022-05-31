class CashRegister

    attr_accessor :total

    def initialize(employee = 0)
        @discount = employee
        @total = 0
        @items = []
    end

    def discount
        @discount
    end


    def add_item(title, price, quantity = 1)
        @previous = @total
        quantity.times {@items << title}
        @total = @total + price*quantity
    end

    def void_last_transaction
        if @previous == 0 
            @total = 0.0
        elsif
        @total = @previous
        end 
    end 

    def apply_discount
        @total = @total*(1-(@discount.to_f/100))
        if @discount == 0
            return "There is no discount to apply."
        else
            return "After the discount, the total comes to $#{@total.to_i}."
        end
    end 

    def items
        @items
    end
end 

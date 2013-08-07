class Account
    attr_reader :name, :balance
    def initialize(name, balance = 100)
        @name = name
        @balance = balance
    end

    private
    def pin; @pin = 1234 end
    def ssn; @ssn = 4321 end
    def ssn_error 
        puts "Access denied: incorrect SSN. Only the account holder has access." 
    end
    def withdraw_error; puts "Deficient funds." end

    def pin_error; "Access denied: incorrect PIN." end
    
    public
    def display_balance(pin_number)
        if pin_number == pin 
            puts "Balance: $#{@balance}."
        else
            puts pin_error
        end
    end
    
    def forgot_pin
        while true
            puts "Please enter last 4 digits of your SSN."
            ssn_user = gets.chomp.to_i
            
            if ssn_user == ssn
                return puts "Your pin is #{pin}."
            else
                puts ssn_error
                break
            end
        end
    end
    
   def withdraw(pin_number, amount)
        if (pin_number == pin) && (amount > @balance)
            puts withdraw_error
        elsif pin_number == pin
            @balance -= amount
            puts "Withdrew $#{amount}. New balance: $#{@balance}."  
        else
            puts pin_error
        end
   end
   
   def deposit(pin_number, amount)
        if pin_number == pin
            @balance += amount
            puts "Deposited $#{amount}. New balance: $#{@balance}."
        else
            puts "Please retrieve your PIN."
            puts pin_error
        end
   end
end

checking_account = Account.new("Lauren", 5_000)
checking_account.withdraw(123, 5_000)
checking_account.forgot_pin
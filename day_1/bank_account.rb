# def get_account_name(account)
#   return account[:holder_name]
# end

class BankAccount

  attr_accessor :holder_name, :amount, :type

  def initialize(input_holder_name, input_amount, input_type)
      @holder_name = input_holder_name
      @amount = input_amount
      @type = input_type
  end

  def direct_debit()
    @amount -= 50 if @type == "Personal"
    @amount -= 100 if @type == "Business"
  end

  def depsoit(amount)
    self.amount += amount
  end

end

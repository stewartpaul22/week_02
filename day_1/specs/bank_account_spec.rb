require('minitest/autorun')
require('minitest/rg')
require_relative('../bank_account')

class TestBankAccount < MiniTest::Test

  def test_account_name
    bank_account = BankAccount.new("John", 500, "Business")
    assert_equal("John", bank_account.holder_name())
  end

  def test_account_amount
    bank_account = BankAccount.new("John", 500, "Business")
    assert_equal(500, bank_account.amount())
  end

  def test_account_type
    bank_account = BankAccount.new("John", 500, "Business")
    assert_equal("Business", bank_account.type())
  end

  def test_set_account_name
    bank_account = BankAccount.new("John", 500, "Business")
    bank_account.holder_name = ("Steve")
    assert_equal("Steve", bank_account.holder_name())
  end

  def test_set_account_type
    bank_account = BankAccount.new("John", 500, "Business")
    bank_account.type = ("Personal")
    assert_equal("Personal", bank_account.type())
  end

  # def test_direct_debit
  #   bank_account = BankAccount.new("John", 500, "Business")
  #   bank_account.direct_debit()
  #   assert_equal(450, bank_account.amount())
  # end

  def test_direct_debit__business
    bank_account = BankAccount.new("John", 500, "Business")
    bank_account.direct_debit()
    assert_equal(400, bank_account.amount())
  end

  def test_direct_debit__personal
    bank_account = BankAccount.new("John", 500, "Personal")
    bank_account.direct_debit()
    assert_equal(450, bank_account.amount())
  end

end

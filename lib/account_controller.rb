class AccountController
  def transfer from, to, amount
    from.debit amount
  end
end
class AccountController
  def transfer from, to, amount
    from.debit amount
    to.credit amount
  end
end
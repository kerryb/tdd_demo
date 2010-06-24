class Bank
  def transfer source_account, destination_account, amount
    source_account.debit amount
    destination_account.credit amount
  end
end

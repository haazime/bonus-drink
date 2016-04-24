class BonusDrink
  def self.total_count_for(amount)
    amount + total_bonus_for(amount)
  end

  def self.total_bonus_for(amount, total = 0)
    bonus, rest = amount.divmod(3)
    return total + bonus if (bonus + rest) < 3
    total_bonus_for(bonus + rest, total + bonus)
  end
end

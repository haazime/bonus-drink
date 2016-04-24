class BonusDrink
  AMOUNT_FOR_BONUS = 3

  def self.total_count_for(amount)
    amount + total_bonus_for(amount)
  end

  def self.total_bonus_for(amount, total = 0)
    bonus, rest = amount.divmod(AMOUNT_FOR_BONUS)
    return total + bonus if (bonus + rest) < AMOUNT_FOR_BONUS
    total_bonus_for(bonus + rest, total + bonus)
  end
end

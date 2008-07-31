class Card < ActiveRecord::Base
  public
  VALUE_NAMES = ['Jack','Queen','King','Ace']
  SUIT_NAMES = {'d'=>'diamonds','h'=>'hearts','s'=>'spades','c'=>'clubs'}
  
  def value_name
    if value > 10
      VALUE_NAMES[value-11]
    else
      value.to_s
    end
  end

  def short_value
    if value > 10
      VALUE_NAMES[value-11].first
    else
      value.to_s
    end
  end

  def suit_name
    SUIT_NAMES[suit]
  end
  
  def display_name
    "#{value_name} of #{suit_name}"
  end
  
  def short_name
    "#{short_value}#{suit}" 
  end
end

def remove_rotten(fruitBasket)
  fruitBasket ? fruitBasket.map { |el| el.gsub("rotten", '').downcase } : []
end

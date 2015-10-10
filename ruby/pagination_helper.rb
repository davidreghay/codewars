# TODO: complete this class

class PaginationHelper

  
  # The constructor takes in an array of items and a integer indicating how many
  # items fit within a single page
  def initialize(collection, items_per_page)
    @item_count = collection.length    
    @items_per_page = items_per_page  
  end  

  # returns the number of items within the entire collection
  def item_count
    @item_count
  end	

  # returns the number of pages
  def page_count
    ans = @item_count / @items_per_page
    ans += 1 unless (@item_count % @items_per_page == 0)
    return ans
  end	

  # returns the number of items on the current page. page_index is zero based.
  # this method should return -1 for page_index values that are out of range
  def page_item_count(page_index)
    return -1 if page_index < 0 or page_index >= self.page_count
    return @items_per_page if page_index < self.page_count - 1 or @item_count % @items_per_page == 0
    @item_count % @items_per_page
  end	

  # determines what page an item is on. Zero based indexes.
  # this method should return -1 for item_index values that are out of range
  def page_index(item_index)
    return -1 if item_index < 0 or item_index >= @item_count
    item_index / @items_per_page
  end

end

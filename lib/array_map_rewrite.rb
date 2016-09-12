class Array
  # Custom map method - "Ruby Open Classes"
  def my_map
    dup_array = []
    each { |e| dup_array << yield(e) }
    dup_array
  end 
end
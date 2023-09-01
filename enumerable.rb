module Enumerable
  def all?
    each { |list| return false unless yield(list) }
    true
  end

  def any?
    each { |list| return true if yield(list) }
    false
  end

  def filter
    result = []
    each { |list| result << list if yield(list) }
    result
  end
end

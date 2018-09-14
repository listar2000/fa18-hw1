class Foobar

  def self.baz(a)
    # Class method, not an instance method
    # Call with `Foobar.baz`
    a.map! {|num| num.to_i + 2}
    a.select! {|num| num < 10 && num % 2 == 0} 
    a.uniq!
    sum = 0
    a.each {|num| sum += num}
    sum
  end
end

# puts Foobar.baz(['1', '2', '2', '4'])
def take_a_number(customer_line, new_customer)
  if customer_line.length > 0
    customer_line.push new_customer
    puts "Welcome, #{new_customer}. You are number #{customer_line.index(new_customer) + 1} in line."
  else
    customer_line.unshift new_customer
    puts "Welcome, #{new_customer}. You are number #{customer_line.index(new_customer) + 1} in line."
  end
end

def line(array)
  queue = ["The line is currently:"]

  unless array.length > 0
    puts "The line is currently empty."
  else
    array.each_with_index do |a, i|
     queue << "#{i + 1}. #{a}"
    end
    puts queue.join(" ")
  end
end

def now_serving(customers)
  unless customers.length > 0
    puts "There is nobody waiting to be served!"
  else
    puts "Currently serving #{customers[0]}."
    customers.shift
  end
end
thread1 = Thread.new do
  puts "Starting to count from 1 to 10"
  1.upto(10) do |x|
    puts "Thread1: The number is #{x}"
    sleep(1)
  end
  puts "Thread1's count is over"
end

thread2 = Thread.new do
  puts "Starting to count from 11 to 20"
  11.upto(20) do |x|
    puts "Thread2: The number is #{x}"
    sleep(2)
  end
  puts "Thread2's count is over"
end

thread1.join
thread2.join

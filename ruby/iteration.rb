def testing(num)
	num1 = num 
	num2 = (num1 * 2)
	num3 = (num2 * 3)
	yield(num1, num2, num3)
end 

testing(5){|x1, x2, x3| puts "#{x1} is less than #{x2} which is less than #{x3}"}

test_array = ["Honda", "Toyota", "Ford"]
test_hash = {Arm:"Tibia", Head:"Cranium",Torso:"Ribs",Leg:"Femur"}

test_array.each do |car_name|
	p car_name
end
p test_array

test_hash.each do |part, bone|
	p "The corresponding #{bone} to #{part}."
end
p test_hash

test_array.map! do |car_name|
	car_name.reverse
end

p test_array

new_hash = {one: 1, two: 2, three: 3, four:4, ten:10}
new_hash.delete_if {|word, num| num > 5}
p new_hash

new_array = [50, 30, 20, 15, 5]
new_array.delete_if {|num| num > 10}
p new_array

new_array1 = [34, 123, 200, 600]
new_array1.keep_if {|num| num <= 200}
p new_array1

new_hash1 = {thirty_four:34, one_twenty_three:123, two_hundred:200, six_hundred:600}
new_hash1.keep_if {|spelled,num| num <= 200}
p new_hash1

new_array = [50, 30, 20, 15, 5]
new_array.select! {|num| num == 15}
p new_array

new_hash1 = {thirty_four:34, one_twenty_three:123, two_hundred:200, six_hundred:600}
new_hash1.select! {|spelled, num| num > 34}
p new_hash1

new_array = [2, 50, 30, 20, 15, 5]
new_array = new_array.drop_while {|num| num < 30}
p new_array

# The hashes aren't ordered, so a process like this one would not work:
# new_hash1 = {twenty:20, one_twenty_three:123, thirty_four:34, two_hundred:200, six_hundred:600}
# new_hash1 = new_hash1.drop_while {|spelled, num| num > 34}
# p new_hash1


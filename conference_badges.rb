require 'pry'

def badge_maker(name)
  return "Hello, my name is #{name}."
end

def batch_badge_creator(attendees)
  badge=[]
  badge_maker(attendees).each do |name| 
    badge.push(name)
  end
  return badge
end

def assign_rooms(attendees)
  speaking_in_room=[]
  attendees.each_with_index do |name,index| 
    speaking_in_room[index] = "Hello, #{name}! You'll be assigned to room #{index+1}!"
  end
  return speaking_in_room.uniq
end

def printer(attendees)
  batch_badge_creator(attendees).each do |badge|
    puts badge
  end
  assign_rooms(attendees).each do |room|
    puts room
  end
end
# Write your code here.
names = ["Calvin", "Collin", "Korrin", "Kevin"]
def badge_maker(name)
    "Hello, my name is #{name}."
end

def batch_badge_creator(name_array)
    badge_batch = []
    name_array.each do |name|
        badge_batch << badge_maker(name)
    end
    badge_batch
end

def assign_rooms(speakers_list)
    available_rooms = [1, 2, 3, 4, 5, 6, 7]
    room_assignments = []
    speakers_list.each_with_index do |speaker, index|
        room_assignments << "Hello, #{speaker}! You'll be assigned to room #{available_rooms[index]}!"
    end
    room_assignments
end

def printer(speakers_list)
    batch_badge_creator(speakers_list).each do |badge_message|
        puts badge_message
    end
    assign_rooms(speakers_list).each do |assignment_message|
        puts assignment_message
    end
end

printer(names)
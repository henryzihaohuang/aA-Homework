def sluggish_octopus(fishes)
  
  fishes.each_with_index do |f1, i1|
        max_length = true

        fishes.each_with_index do |f2, i2|

            next if i1==i2
            max_length = false if f2.length > f1.length
        end
        return f1 if max_length
    end
end


#Dominant octopus
class Array
    def merge_sort(&prc)
     prc ||= Proc.new {|x,y| x <=> }
     return self if count <= 1

     mid = count/2
     sorted_left = self.take(midpoint).merge_sort(&prc)
     sorted_right = self.drop(midpoint).merge_sort(&prc)

     Array.merge(sorted_left, sorted_right, target)
    end

    def self.merge(left,right, &prc)

        ans = []
        until left.empty? || right.empty?
        case prc.call(left.first, right.first)
        when -1
        merge << left.shift
        when 0 
        merge << left.shift
        when 1
        merge << right.shift
        end

        merge.concat(left)
        merge.concat(right)

    end
end


def clever_octopus(fishes)
  biggest_fish = fishes.first

    fishes.each do |fish|
        if fish.length>biggest_fish.length
            biggest_fish = fish
        end
    end
    biggest_fish
end

def slow_dance(dir, tiles_array)
    tiles_array.each_with_index do |tile, i|
        return i if tile == direction
    end
end

tiles_array = [
    "up", "right-up", "right", "right-down", "down", "left-down", "left",  "left-up" ]


def fast_dance(dir, tiles_hash)
    tiles_hash[direction]
end
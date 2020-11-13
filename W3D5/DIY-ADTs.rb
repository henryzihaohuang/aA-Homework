class Stack

    attr_reader :stack
    def initialize
        @stack = []

    end

    def push(el)
        @stack.push(el)
        el
    end

    def pop
        @stack.pop(el)
        el

    end

    def peek
        @stack.last
    end
end


class Queue

    attr_reader :queue

    def inititalize
        @queue = []
    end

    def enqueue(el)
        @queue.push(el)
        el
    end

    def dequeue
        @queue.shift(el)
        el
    end

    def peek
        @queue.first
    end
end

class Map

    attr_reader :array


    def initialize
      @array = []
    end
  
    def set(key, value)
      pair_index = @array.index { |pair| pair[0] == key }



      if pair_index
        @array[pair_index][1] = value
      else
        @array.push([key, value])
      end
      value
    end
  
    def get(key)
      @array.each { |pair| return pair[1] if pair[0] == key }
      nil
    end
  
    def delete(key)
      value = get(key)



      @array.reject! { |pair| pair[0] == key }
      value
    end
  
    def show
      deep_dup(@array)
    end

    def deep_dup(arr)
        arr.map { |el| el.is_a?(Array) ? deep_dup(el) : el }
      end 
      
end
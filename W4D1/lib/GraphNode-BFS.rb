
class GraphNode

    attr_reader :node, :value
    attr_accessor :neighbors, :visited

    def initialize(value)
        @value = value
        @neighbors = []
    end

    def add_neighbor(node)
        self.neighbors << node
    end
end

    #BFS = enqueue method FIFO

def bfs(starting_node, target_value)
    queue = [starting_node]
    visited = Set.new()

    starting_node.neighbors.each do |neighb_nodes|

        return queue.first.value if queue.first.value == target_value

        visited.add(queue.shift) 

        queue.push(neighb_nodes) unless visited.include?(neighb_nodes)
          
    end
    nil
end

a = GraphNode.new('a')
b = GraphNode.new('b')
c = GraphNode.new('c')
d = GraphNode.new('d')
e = GraphNode.new('e')
f = GraphNode.new('f')
a.neighbors = [b, c, e]
c.neighbors = [b, d]
e.neighbors = [a]
f.neighbors = [e]

a.bfs(a, "b")
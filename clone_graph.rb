# QUESTION: 133
# Given a reference of a node in a connected undirected graph, return a deep copy (clone) of the graph. Each node in the graph contains a val (int) and a list (List[Node]) of its neighbors.
# Input:
# {"$id":"1","neighbors":[{"$id":"2","neighbors":[{"$ref":"1"},{"$id":"3","neighbors":[{"$ref":"2"},{"$id":"4","neighbors":[{"$ref":"3"},{"$ref":"1"}],"val":4}],"val":3}],"val":2},{"$ref":"4"}],"val":1}
#
# Explanation:
# Node 1's value is 1, and it has two neighbors: Node 2 and 4.
# Node 2's value is 2, and it has two neighbors: Node 1 and 3.
# Node 3's value is 3, and it has two neighbors: Node 2 and 4.
# Node 4's value is 4, and it has two neighbors: Node 1 and 3.
#
#
# Note:
#
# The number of nodes will be between 1 and 100.
# The undirected graph is a simple graph, which means no repeated edges and no self-loops in the graph.
# Since the graph is undirected, if node p has node q as neighbor, then node q must have node p as neighbor too.
# You must return the copy of the given node as a reference to the cloned graph.



class Node
attr_accessor :val , :neighbours

def initialize(val,neighbours)
@val = val
@neighbours = neighbours
end

end
# dfs
def clone_graph_dfs(node)

visited = {}
clone_graph_helper(node,visited)

end

def clone_graph_helper(node,visited)

return nil if node == nil
return visited[node] if visited[node]
clone_node = Node.new(node.val,[])
visited[node] =  clone_node

node.neighbours.each do |neighbour|
  clone_node.neighbours << (clone_graph_helper(neighbour,visited))
end

clone_node
end

a = Node.new(1,[])
b = Node.new(2,[])
c = Node.new(3,[])
d = Node.new(4,[])
a.neighbours << b
a.neighbours << d
b.neighbours << a
b.neighbours << c
c.neighbours << b
c.neighbours << d
d.neighbours << a
d.neighbours << c

# p clone_graph_dfs(a)

# bfs

def clone_graph_bfs(node)
return nil if node == nil
queue = []
queue << node
visited = {}
visited[node] = Node.new(node.val,[])
while !(queue.empty?)
cur_node = queue.shift

cur_node.neighbours.each do |neighbour|
if !(visited.has_key?(neighbour))
clone_node = Node.new(neighbour.val,[])
visited[neighbour] = clone_node
queue << neighbour
end
visited[cur_node].neighbours << visited[neighbour]
end
end

visited[node]
end

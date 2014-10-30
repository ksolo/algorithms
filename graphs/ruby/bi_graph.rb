class BiGraph

  attr_reader :vertices_count, :edge_count

  def initialize(vertices_count: 0)
    @vertices_count = vertices_count
    @edge_count = 0
    @adjacencies = Array.new(vertices_count) { Array.new }
  end

  def adj(vertex)
    @adjacencies[vertex]
  end

  def add_edge(from, to)
    @edge_count += 1
    @adjacencies[from].push(to)
    @adjacencies[to].push(from)
  end
end

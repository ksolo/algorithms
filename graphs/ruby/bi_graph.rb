class BiGraph

  attr_reader :vertices_count, :edge_count

  def initialize(vertices_count: 0)
    @vertices_count = vertices_count
    @edge_count = 0
  end

end

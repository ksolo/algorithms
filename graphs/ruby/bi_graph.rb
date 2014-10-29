class BiGraph

  def initialize(vertices = [])
    @vertices = vertices
    @edges = []
  end

  def vertex_count
    @vertices.length
  end

  def edge_count
    @edges.length
  end

end

require_relative '../bi_graph'

RSpec.describe BiGraph do
  describe "Initialization" do
    context "without parameters" do
      specify { expect(subject.vertices_count).to be 0 }
      specify { expect(subject.edge_count).to be 0 }
    end

    context "with vertices_count passed in" do
      subject { BiGraph.new(vertices_count: 27) }
      specify { expect(subject.vertices_count).to be 27 }
    end
  end
end

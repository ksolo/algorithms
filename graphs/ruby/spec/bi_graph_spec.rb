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

  describe "#adj(vertex)" do
    subject { BiGraph.new(vertices_count: 10) }
    context "before edges have been created" do
      specify { expect(subject.adj(1)).to be_empty }
    end
  end

  describe "#add_edge(to, from)" do
    subject { BiGraph.new(vertices_count: 10) }
    it "increments the edge count" do
      expect{subject.add_edge(0,1)}.to change(subject, :edge_count).from(0).to(1)
    end

    it "adds and adjacent vertex to the 'from' vertex" do
      expect{subject.add_edge(0, 1)}.to change{subject.adj(0)}.from([]).to([1])
    end

    it "adds and adjacent vertex to the 'to' vertex" do
      expect{subject.add_edge(0, 1)}.to change{subject.adj(1)}.from([]).to([0])
    end
  end
end

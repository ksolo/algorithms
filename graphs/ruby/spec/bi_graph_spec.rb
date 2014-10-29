require_relative '../bi_graph'

RSpec.describe BiGraph do
  describe "On initialize" do

    describe "#vertex_count" do
      context "with no arguments passed" do
        specify { expect(subject.vertex_count).to be 0 }
      end

      context "with vertices passed in" do
        subject { BiGraph.new([1, 2, 3, 4, 5]) }
        specify { expect(subject.vertex_count).to be 5 }
      end
    end

    describe "#edge_count" do
      specify { expect(subject.edge_count).to be 0 }
    end

  end
end

require_relative '../bi_graph'

RSpec.describe BiGraph do

  describe "On initialize" do
    it "vertices should be empty" do
      expect(subject.vertices).to be_empty
    end

    it "edges should be empty" do
      expect(subject.edges).to be_empty
    end
  end

end

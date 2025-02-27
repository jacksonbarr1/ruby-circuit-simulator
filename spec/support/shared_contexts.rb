RSpec.shared_context "gate with insufficient inputs", shared_context: :metadata do
    it "raises an error if less than #{described_class.minimum_inputs} input(s) are provided" do
        expect { described_class.new(*Array.new(described_class.minimum_inputs - 1)) }.to raise_error(ArgumentError)
    end
    it "raises an error if more than #{described_class.maximum_inputs} inputs are provided" do
        expect { described_class.new(*Array.new(described_class.maximum_inputs + 1)) }.to raise_error(ArgumentError)
    end
end
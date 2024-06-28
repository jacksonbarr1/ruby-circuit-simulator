require_relative '../lib/gate'

RSpec.describe Gate do
    it "cannot be instantiated directly" do
        expect { Gate.new }.to raise_error(NotImplementedError)
    end
end

RSpec.shared_examples "a gate" do |gate_class, inputs, expected_output|
    it "returns #{expected_output} for inputs #{inputs}" do
        gate = gate_class.new(*inputs)
        expect(gate.output).to eq(expected_output)
    end
end
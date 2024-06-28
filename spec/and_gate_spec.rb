require_relative '../lib/and_gate'

RSpec.describe AndGate do
    def create_and_gate_with_inputs(inputs)
        AndGate.new(*inputs)
    end
    example "Input (0,0) returns 0" do
        and_gate = create_and_gate_with_inputs([0,0])
        expect(and_gate.output).to eq(0)
    end
    example "Input (0,1) returns 0" do
        and_gate = create_and_gate_with_inputs([0,1])
        expect(and_gate.output).to eq(0)
    end
    example "Input (1,0) returns 0" do
        and_gate = create_and_gate_with_inputs([1,0])
        expect(and_gate.output).to eq(0)
    end
    example "Input (1,1) returns 1" do
        and_gate = create_and_gate_with_inputs([1,1])
        expect(and_gate.output).to eq(1)
    end
end
require_relative '../lib/and_gate'

RSpec.describe AndGate do
    let(:and_gate) { AndGate.new }
    example "Input (0,0) returns 0" do
        and_gate.inputs = [0, 0]
        expect(and_gate.output).to eq(0)
    end
    example "Input (0,1) returns 0" do
        and_gate.inputs = [0, 1]
        expect(and_gate.output).to eq(0)
    end
    example "Input (1,0) returns 0" do
        and_gate.inputs = [1, 0]
        expect(and_gate.output).to eq(0)
    end
    example "Input (1,1) returns 1" do
        and_gate.inputs = [1, 1]
        expect(and_gate.output).to eq(1)
    end
end
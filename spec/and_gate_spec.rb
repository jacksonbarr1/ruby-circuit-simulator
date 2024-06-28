require_relative '../lib/and_gate'

RSpec.describe AndGate do
    let(:and_gate) { AndGate.new }
    example "Input 0 and 0 returns 0" do
        expect(and_gate.output).to eq(0)
    end
end
require_relative '../lib/and_gate'
require_relative '../spec/gate_spec'

RSpec.describe AndGate do
    include_examples "a gate", AndGate, [0, 0], 0
    include_examples "a gate", AndGate, [0, 1], 0
    include_examples "a gate", AndGate, [1, 0], 0
    include_examples "a gate", AndGate, [1, 1], 1
end
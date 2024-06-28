require_relative './shared_examples/gate_examples'
require_relative '../lib/and_gate'

RSpec.describe AndGate do
    include_examples "a gate", AndGate, [0, 0], 0
    include_examples "a gate", AndGate, [0, 1], 0
    include_examples "a gate", AndGate, [1, 0], 0
    include_examples "a gate", AndGate, [1, 1], 1
end
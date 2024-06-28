require_relative './shared_examples/gate_examples'
require_relative '../lib/or_gate'

RSpec.describe OrGate do
    include_examples "a gate", OrGate, [0, 0], 0
    include_examples "a gate", OrGate, [0, 1], 1
    include_examples "a gate", OrGate, [1, 0], 1
    include_examples "a gate", OrGate, [1, 1], 1
end
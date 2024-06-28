require_relative './shared_examples/gate_examples'
require_relative '../lib/or_gate'

RSpec.describe OrGate do
    include_examples "a gate", OrGate, [false, false], false
    include_examples "a gate", OrGate, [false, true], true
    include_examples "a gate", OrGate, [true, false], true
    include_examples "a gate", OrGate, [true, true], true
end
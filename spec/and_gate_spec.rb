require_relative './shared_examples/gate_examples'
require_relative '../lib/and_gate'

RSpec.describe AndGate do
    include_examples "a gate", AndGate, [false, false], false
    include_examples "a gate", AndGate, [false, true], false
    include_examples "a gate", AndGate, [true, false], false
    include_examples "a gate", AndGate, [true, true], true
end
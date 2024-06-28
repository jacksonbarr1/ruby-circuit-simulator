require_relative './support/shared_examples'
require_relative '../lib/and_gate'
require_relative './support/shared_contexts'

RSpec.describe AndGate do
    include_context "gate with insufficient inputs"
    include_examples "a gate", AndGate, [false, false], false
    include_examples "a gate", AndGate, [false, true], false
    include_examples "a gate", AndGate, [true, false], false
    include_examples "a gate", AndGate, [true, true], true
end
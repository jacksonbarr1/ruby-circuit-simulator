require_relative '../lib/gate/or_gate'
require_relative './support/shared_examples'
require_relative './support/shared_contexts'

RSpec.describe OrGate do
    include_context "gate with insufficient inputs"
    include_examples "a gate", OrGate, [false, false], false
    include_examples "a gate", OrGate, [false, true], true
    include_examples "a gate", OrGate, [true, false], true
    include_examples "a gate", OrGate, [true, true], true
end
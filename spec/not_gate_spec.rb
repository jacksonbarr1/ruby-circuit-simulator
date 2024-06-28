require_relative '../lib/not_gate'
require_relative './support/shared_examples'
require_relative './support/shared_contexts'

RSpec.describe NotGate do
    include_context "gate with insufficient inputs"
    include_examples "a gate", NotGate, [false], true
    include_examples "a gate", NotGate, [true], false
end
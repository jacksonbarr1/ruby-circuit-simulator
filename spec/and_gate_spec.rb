require_relative '../lib/gate/and_gate'
require_relative './support/shared_examples'
require_relative './support/shared_contexts'
require_relative 'spec_helper'

RSpec.describe AndGate do
    include_context "gate with insufficient inputs"
    include_examples "a gate", AndGate, [false, false], false
    include_examples "a gate", AndGate, [false, true], false
    include_examples "a gate", AndGate, [true, false], false
    include_examples "a gate", AndGate, [true, true], true
    it "returns false for a random-length set of inputs with exactly one false input" do
        inputs = random_length_true_array(AndGate.minimum_inputs, AndGate.maximum_inputs)
        inputs[rand(inputs.length)] = false
        gate = AndGate.new(*inputs)
        expect(gate.output).to eq(false)
    end
end
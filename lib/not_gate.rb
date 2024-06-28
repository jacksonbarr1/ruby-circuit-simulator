require 'gate'

class NotGate < Gate
    def output
        !inputs.first
    end

    def self.minimum_inputs
        1
    end
end
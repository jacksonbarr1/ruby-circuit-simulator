require 'gate'

class AndGate < Gate
    def output
        inputs.reduce(:&)
    end
end
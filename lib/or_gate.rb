require 'gate'

class OrGate < Gate
    def output
        inputs.reduce(:|)
    end
end
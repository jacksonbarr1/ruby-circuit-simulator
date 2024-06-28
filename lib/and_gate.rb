require_relative 'gate'

class AndGate < Gate
    def output
        inputs.all? { |input| input == 1 } ? 1 : 0
    end
end
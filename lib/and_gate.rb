class AndGate
    attr_accessor :inputs

    def initialize(*inputs)
        @inputs = inputs
    end

    def output
        inputs.all? { |input| input == 1 } ? 1 : 0
    end
end
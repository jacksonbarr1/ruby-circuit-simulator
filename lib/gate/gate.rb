class Gate
    attr_accessor :inputs

    def initialize(*inputs)
        raise NotImplementedError if instance_of?(Gate)
        if inputs.length < self.class.minimum_inputs
            raise ArgumentError, "Expected at least #{self.class.minimum_inputs} inputs, got #{inputs.length}"
        end
        if inputs.length > self.class.maximum_inputs
            raise ArgumentError, "Expected at most #{self.class.maximum_inputs} inputs, got #{inputs.length}"
        end
        @inputs = inputs
    end

    def output
        raise NotImplementedError
    end

    def self.minimum_inputs
        2
    end

    def self.maximum_inputs
        64
    end
end
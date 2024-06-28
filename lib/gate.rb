class Gate
    attr_accessor :inputs

    def initialize(*inputs)
        raise NotImplementedError if instance_of?(Gate)
        @inputs = inputs
    end
end
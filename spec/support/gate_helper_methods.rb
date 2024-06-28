module GateHelperMethods
    def random_length_false_array(minimum_inputs, maximum_inputs)
        # Returns array of false elements with a length in [minimum_inputs, maximum_inputs)
        Array.new(rand(minimum_inputs...maximum_inputs), false)
    end
    def random_length_true_array(minimum_inputs, maximum_inputs)
        # Returns array of true elements with a length in [minimum_inputs, maximum_inputs)
        Array.new(rand(minimum_inputs...maximum_inputs), true)
    end
end
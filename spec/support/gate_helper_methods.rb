module GateHelperMethods
    def random_length_false_array(minimum_inputs, maximum_inputs)
        Array.new(rand(minimum_inputs...maximum_inputs), false)
    end
    def random_length_true_array(minimum_inputs, maximum_inputs)
        Array.new(rand(minimum_inputs...maximum_inputs), true)
    end
end
require_relative '../lib/gate'

RSpec.describe Gate do
    it "cannot be instantiated directly" do
        expect { Gate.new }.to raise_error(NotImplementedError)
    end
end
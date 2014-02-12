require 'spec_helper'

describe Balance do
  it { should validate_presence_of(:balance) }

  it { should have_many(:transactions) }
  it { should belong_to(:account) }
end
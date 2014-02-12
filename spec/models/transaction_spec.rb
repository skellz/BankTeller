require 'spec_helper'

describe Transaction do 
  it { should belong_to(:balance) }

  it { should validate_numericality_of(:deposit) }
  it { should validate_numericality_of(:withdrawl) }

  it { should have_valid(:deposit).when('101.00', '2', '.30') }
  it {should_not have_valid(:deposit).when(nil, '', 'deposit', 'gthjbj22.0', '232.efef0')}

  it { should have_valid(:withdrawl).when('101.00', '2', '.30') }
  it {should_not have_valid(:withdrawl).when(nil, '', 'withdrawl', 'gthjbj22.0', '232.efef0')}

end
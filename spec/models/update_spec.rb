require 'rails_helper'

RSpec.describe Update, type: :model do
  # pending "add some examples to (or delete) #{__FILE__}"

  let(:klub) { create(:klub) }
  let(:update) { create(:update, updatable: klub, status: :unverified, field: 'name', newvalue: 'Pear') }

  subject { update }

  describe "resolve!" do
    it "should just set the status when accepted" do
      update.status = :accepted
      expect { update.resolve! }.to change(klub, :name)
    end
  end
end
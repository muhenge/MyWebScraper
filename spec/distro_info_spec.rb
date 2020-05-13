# spec/distro_info_test.rb

require '../lib/distro_info'

describe Distros do
  describe '#show' do
    context 'a method returns an array' do
      let(:distro) { Distros.new }
      it 'a public method returns an array' do
        expect(distro.show)
          .to be_an_instance_of(Array)
      end
    end
  end
end

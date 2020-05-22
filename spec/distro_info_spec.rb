# spec/distro_info_test.rb

require_relative '../lib/distro_info'

describe Distros do
  describe '#show' do
    context 'a method returns an array' do
      let(:distro) { Distros.new }
      it 'a public method returns an array' do
        expect(distro.show)
          .to be_an_instance_of(Array)
      end
      it 'should not be a single element' do
        expect(distro.show).not_to be_a(String)
      end
      it 'should not be empty' do
        expect(distro.show).not_to be_nil
      end
    end
  end
end

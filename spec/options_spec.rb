require 'clara/options'

describe Clara::Options do
  describe '#[]' do
    it 'should get the raw option values' do
      options = Clara::Options.new('foo' => 'bar')
      expect(options['foo']).to eq 'bar'
    end
  end

  describe '#destination' do
    it 'should return the system destination' do
      options = Clara::Options.new 'system_location' => '/foo/bar/thing.conf'
      expect(options.destination false).to eq '/foo/bar/thing.conf'
    end

    it 'should return the user destination' do
      options = Clara::Options.new 'user_location' => '/biz/baz/stuff.conf'
      expect(options.destination true).to eq '/biz/baz/stuff.conf'
    end
  end
end

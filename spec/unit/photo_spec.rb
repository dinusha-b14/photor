require 'spec_helper'

describe Photor::Photo do
  
  let(:photo) { described_class.new }

  describe '#get_recent' do
    context 'without options' do
      it 'gets a status of ok' do
        expect(execute_method(photo, :get_recent)['stat']).to eq('ok')
      end
    end

    context 'with options' do
      let(:options) { { per_page: 10} }
      it 'gets a status of ok' do
        expect(execute_method(photo, :get_recent, options)['stat']).to eq('ok')
      end

      it 'gets a per page setting of 10' do
        expect(execute_method(photo, :get_recent, options)['photos']['perpage']).to eq(10)
      end
    end
  end

  describe '#search' do
    it 'gets a status of ok'
  end

end
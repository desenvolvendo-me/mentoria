require 'spec_helper'

RSpec.describe BrazilianDocs::Cpf do
  describe '.valid_format?' do
    context 'when CPF is valid' do
      it 'returns true for formatted CPF' do
        expect(described_class.valid_format?('123.456.789-09')).to be true
      end

      it 'returns true for unformatted CPF' do
        expect(described_class.valid_format?('12345678909')).to be true
      end
    end

    context 'when CPF is invalid' do
      it 'returns false for nil' do
        expect(described_class.valid_format?(nil)).to be false
      end

      it 'returns false for empty string' do
        expect(described_class.valid_format?('')).to be false
      end

      it 'returns false for malformed CPF' do
        expect(described_class.valid_format?('123.456.789-0')).to be false
        expect(described_class.valid_format?('123.456.789')).to be false
        expect(described_class.valid_format?('123456')).to be false
        expect(described_class.valid_format?('123.456.78909')).to be false
        expect(described_class.valid_format?('123456789-09')).to be false
      end

      it 'returns false for CPF with letters' do
        expect(described_class.valid_format?('123.456.78a-09')).to be false
        expect(described_class.valid_format?('12345678a09')).to be false
      end
    end
  end

  describe '.clean_format' do
    it 'return unformatted CPF' do
      expect(described_class.clean_format('123.456.789-09')).to eq('12345678909')
    end
  end
end

require "spec_helper"

RSpec.describe MathTypeToMathMLPlus do
  it 'has a version number' do
    expect(MathTypeToMathMLPlus::VERSION).not_to be nil
  end

  Dir.glob("spec/fixtures/input/*.bin") do |equation|
    it "converted #{equation} matches expected output" do
      xml = MathTypeToMathMLPlus::Converter.new(equation).convert
      expected_xml = "#{File.basename(equation, ".*")}.xml"
      expected = File.open("spec/fixtures/expected/" + expected_xml).read
      expect(xml).to be_equivalent_to(expected)
    end
  end
end

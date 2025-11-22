require_relative 'lib/mathtype_to_mathml_plus'

converter = MathTypeToMathMLPlus::Converter.new("oleObject1.bin")
xml = converter.convert

puts xml

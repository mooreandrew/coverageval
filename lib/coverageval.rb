require 'nokogiri'

if (ARGV[0].nil?) then
  raise "Error: Input coverage file missing"
end

input_file = ARGV[0];

if (ARGV[1].nil?) then
  raise "Error: Coverage target missing"
end

target = ARGV[1].to_f;


f = File.open(input_file)
doc = Nokogiri::XML(f)
f.close

total = 0;
passed = 0;

doc.xpath('/coverage/packages/package/classes/class/lines/line').each do |row|
  total = total + 1
  if (row['hits'] == '1') then
    passed = passed + 1
  end
end

actual = (passed.to_f / total.to_f).round(2)

if (actual < target) then
  raise "Error: Coverage is below target. Expected: >" + target.to_s + ", Actual: " + actual.to_s
end

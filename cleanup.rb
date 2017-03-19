require 'nokogiri'

Dir.glob('src/beta.nvd.nist.gov/**/*.html') do |filename|
  puts filename
  doc = File.open(filename) { |f| Nokogiri::HTML(f) }
  doc.css('nav,footer').remove
  File.open(filename, 'w') { |file| file.write(doc.to_html) }
end

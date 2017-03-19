require 'nokogiri'

Dir.glob('src/beta.nvd.nist.gov/**/*.html') do |filename|
  puts filename
  doc = File.open(filename) { |f| Nokogiri::HTML(f) }

  doc.css('nav,footer,.col-lg-2').remove
  doc.css('.col-lg-10').remove_attr('class')

  File.open(filename, 'w') { |file| file.write(doc.to_html) }
end

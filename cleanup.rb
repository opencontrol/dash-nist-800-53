require 'erb'
require 'nokogiri'

Dir.glob('src/beta.nvd.nist.gov/**/*.html') do |filename|
  puts filename
  doc = File.open(filename) { |f| Nokogiri::HTML(f) }

  doc.css('nav,footer,.col-lg-2,.dashAnchor').remove
  doc.css('.col-lg-10').remove_attr('class')

  if filename.include?('control/')
    doc.css('[id^="enhancement-"] th').each do |el|
      name = ERB::Util.url_encode(el.text.strip)
      el.add_child(%{<a name="//apple_ref/cpp/Modifier/#{name}" class="dashAnchor"></a>})
    end
  end

  File.open(filename, 'w') { |file| file.write(doc.to_html) }
end

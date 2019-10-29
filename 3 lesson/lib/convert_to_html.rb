class ConvertToHtml
  def initialize(content, filename = 'index', bypass_html = false)
    define_singleton_method(:convert_to_html) do
      return if invalid_content(content, bypass_html)

      write_to_file(filename, content)

    end
  end

  private

  def invalid_content(content, bypass_html)
    !bypass_html if content.match(/<script[\s\S]*?>[\s\S]*?<\/script>/) || content.match(/<html[\s\S]*?>[\s\S]*?<\/html>/)
  end

  def write_to_file(filename, content)
    file = File.open("#{filename}.html", 'w+')
    file.puts '<!DOCTYPE html>'
    file.puts "<html lang='en'>"
    file.puts "<head><meta charset='utf-8'> <title>Hello</title></head>"
    file.puts "<body>#{content}</body>"
    file.puts '</html>'
    file.close
  end
end

puts 'Content'
content = gets.chomp
puts 'Filename'
filename = gets.chomp
puts 'Bypass html'
bypass_html = gets.chomp

file = ConvertToHtml.new(content, filename, bypass_html.eql?('true'))
file.convert_to_html

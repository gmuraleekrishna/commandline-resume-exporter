require_relative 'formats'
require_relative 'handler'

class Resume
  def user_details
    $content = ["name","age","total_cgpa"]
    $values =[]
    $content.each do |item|
      puts "enter the #{item}"
      $values.push(gets.chomp) 
    end
  end
  include Formats
  include Handler
  def checks_export_availability
    puts available_formats
    puts "select the format to export"
    selected_format = gets.chomp
    send_format(selected_format)
  end
end

res1= Resume.new
res1.user_details
res1.checks_export_availability
def find_secret_message(paragraph)
  read = []
  msg = []
  paragraph.gsub!(/[^A-Za-z ]/, '')
  paragraph.split.each do |word|
     msg << word.downcase if read.include? word.downcase and !msg.include? word.downcase 
     read << word.downcase
  end
  msg.join(' ')
end

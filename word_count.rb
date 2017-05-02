def word_count(path)
	file_list = Dir.entries(path)
	result=Hash.new
	file_list.each do |f|
		 fpath = path+"\\"+f
         next if f=='.' or f=='..'
		 if File.directory?(fpath)
		 	word_count (fpath)
		 else 
		 	puts fpath
		 	File.readlines(fpath).each do |line|
		 		word_list = line.gsub!(/[^A-Za-z]/,' ').strip!.split(' ')
		 		word_list.each do|word|
		 			result[word] = yield result[word]
		 		end
		 	end
		 end
	end
	result
end

result = word_count('C:\Users\Administrator\Desktop\New folder'){|a|

	if a.nil?
		puts a
		a=1
	else
		a+=1
	end
}
puts (result.sort {|k,v| v[1]<=>k[1]})[0].class

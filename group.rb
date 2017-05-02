# @param {String[]} strs
# @return {String[][]}
def group_anagrams(strs)
   result = Hash.new
   strs.each do |word|
      key = 0
      word.each_char do |c|
         key+=c.ord
      end
      if !result.has_key?(key)    
      	result[key] = Array.new
      end
      result[key].push word
   end
   return_result = Array.new
   result.each do |k,v|
   	return_result.push v
   end
   return_result
end

a = ["eat","tea","tan","ate","nat","bat"]
puts group_anagrams(a).to_s
#!/usr/bun/ruby

def find_frequence(sentence, word)
	sentence = sentence.downcase
	word = word.downcase
	frequence = 0
	while sentence.include? word
		frequence += 1
		sentence = sentence.sub word,""
	end
	return frequence
end
def find_frequence1(sentence, word)
	sentence = sentence.downcase
	word = word.downcase
	sentence_size = sentence.size
	sentence.gsub!word, ""
	sentence_size_handle = sentence.size
	number_of_word = sentence_size - sentence_size_handle
	frequence = number_of_word / word.size
end


def sort_string(string)
	array = string.split(" ")
	array.sort_by!{|item| item.size}
	p array
	p array.reverse
end

def sort_string1(string)
	array = string.split(" ")
	array = array.sort! { |a,b| a.size <=> b.size}
	sentence = array.join(" ")
	p array
end

def check_reverse(string)
	string = string.downcase
	string.gsub!" ",""
	reverse = string.reverse
	return string.eql? reverse
end


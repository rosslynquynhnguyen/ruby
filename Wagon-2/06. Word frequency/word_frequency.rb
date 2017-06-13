# word_frequency.rb

require 'set'
file_name = 'source-text.txt'

top = 100
content = File.read(file_name)

# load stopwords
stopwords = File.read('english-stopwords.txt').split(/\W+/).to_set

words = content.split(/\W+/) #split by all non-word params, combined multiple delimeters
            .group_by{|word| word.downcase} #group by downcase of the words
            .map{|k,v| [k, v.count]} # project into word - count
            .select{|k,v| !stopwords.include?(k)}
            .sort_by{|k, v| v}
            .reverse!         
            .take(top)
            .map{|k, v| puts "#{('\'' + k + '\'').ljust(15)}: #{v} occurrences"}

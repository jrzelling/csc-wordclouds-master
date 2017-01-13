#'
#' @export
#'

# Install
# install.packages("tm")  # for text mining
# install.packages("SnowballC") # for text stemming
# install.packages("wordcloud") # word-cloud generator
# install.packages("RColorBrewer") # color palettes

library("tm")
library("SnowballC")
library("wordcloud")
library("RColorBrewer")
library("png")

# This function outputs a jpg file

WordCloudGenerator <- function(button.string, title.string) {
	
	# The word cloud needs to save a file to this directory
	#setwd("~/Desktop/shiny-apps-master/edaweb-demo-master/EdaWeb/R")
	#setwd("C:/Users/jzell714047/Desktop/shiny-apps-master/edaweb-demo-master/edaweb/R")
	
	# This is the source string for the word cloud to compare data
	# Ideally this is a link to a string in the source file database rather than the string itself
	
	#st10 <- "cursus viverra gravida. Phasellus sodales, neque id suscipit imperdiet, neque nibh placerat turpis, nec dignissim dolor felis sed ex."
	#st10.v <- sample(unlist(strsplit(st10, " ")), 15, replace = TRUE)
	
	rst.w <- unlist(strsplit(button.string, " "))
	#c(st10.v, rst.w)
	
	#random.string.of.words <- unlist(strsplit(paste(st10.v, rst.w), " "))
	# random.number <- sample(50:200, 1)
	# random.string.of.words <- sample(st10, 50) rep(button.string, 500)), random.number, replace = TRUE)
	
	random.string.of.words <- rst.w
	
	docs <- Corpus(VectorSource(random.string.of.words))
	
	toSpace <- content_transformer(function (x , pattern ) gsub(pattern, " ", x))
	
	docs <- tm_map(docs, toSpace, "/")
	docs <- tm_map(docs, toSpace, "@")
	docs <- tm_map(docs, toSpace, "\\|")
	#docs <- tm_map(docs, toSpace, ".")
	
	# Convert the text to lower case
	docs <- tm_map(docs, content_transformer(tolower))
	# Remove numbers
	docs <- tm_map(docs, removeNumbers)
	# Remove english common stopwords
	docs <- tm_map(docs, removeWords, stopwords("english"))
	# Remove your own stop word
	# specify your stopwords as a character vector
	docs <- tm_map(docs, removeWords, c("blabla1", "blabla2")) 
	# Remove punctuations
	docs <- tm_map(docs, removePunctuation)
	# Eliminate extra white spaces
	docs <- tm_map(docs, stripWhitespace)
	# Text stemming
	# docs <- tm_map(docs, stemDocument)
	
	dtm <- TermDocumentMatrix(docs)
	m <- as.matrix(dtm)
	v <- sort(rowSums(m),decreasing=TRUE)
	d <- data.frame(word = names(v),freq=v)
	#head(d, 10)
	
	#set.seed(1234)
	#setwd("C:/Users/jzell714047/Desktop/shiny-apps-master/edaweb-demo-master/wordcloud-generator-master")
	png('wordcloud.png')
	wordcloud(words = d$word, freq = d$freq, min.freq = 1,
						max.words=75, random.order=FALSE, rot.per=0.35, 
						colors=brewer.pal(8, "Dark2"))
	dev.off()
	findFreqTerms(dtm, lowfreq = 1)

	findAssocs(dtm, terms = "freedom", corlimit = 0.3)

	png('frequentwords.png')
	barplot(d[1:10,]$freq, las = 2, names.arg = d[1:10,]$word,
					col ="lightblue", main =title.string,
					ylab = "Word Frequencies")
	dev.off()

	return(paste(d$word[1], " + ", d$word[2]))
		
}
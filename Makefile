CC = xelatex
CV_DIR = cv
CV_SRCS = $(shell find $(CV_DIR) -name '*.tex')

.SILENT:

cv: cv.tex $(CV_SRCS) awesome-cv.cls
	$(CC) cv.tex
	rm *.aux *.log

clean:
	rm *.aux *.log


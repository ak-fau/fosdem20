
.PHONY: all clean

all: github-vcard.png 409E331392757667-vcard.png

clean:
	rm -f *.png

%-vcard.png: %.vcard
	qrencode -o $@ -r $< -t png -s 5 -d 300

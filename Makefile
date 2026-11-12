all: package.zip

package.zip: manifest.json override.css icon-128x128.png
	zip -FS ./package.zip manifest.json override.css icon-128x128.png

clean:
	rm -f ./package.zip

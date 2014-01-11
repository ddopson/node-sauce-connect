SAUCE_CONNECT_JAR = $(wildcard ext/*.jar)

.PHONY: clean build install
install:
	echo "installing"
	node_modules/.bin/coffee -o lib/ -c src/
	@mkdir -p ext
	$(if $(SAUCE_CONNECT_JAR),,cd ext; wget $(npm_package_sauce_connect_url); unzip Sauce-Connect-latest.zip)

build:
	echo "building"
	node_modules/.bin/coffee -o lib/ -c src/

clean:
	echo "cleaning"
	rm -rf lib/*.js

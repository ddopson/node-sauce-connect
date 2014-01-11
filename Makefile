SAUCE_CONNECT_JAR = $(wildcard ext/*.jar)

.PHONY: clean build install
install:
	echo "installing"
	@mkdir -p ext
	$(if $(SAUCE_CONNECT_JAR),,cd ext; wget $(npm_package_sauce_connect_url); unzip Sauce-Connect-latest.zip)

build:
	echo "building"
	coffee -o lib/ -c src/

clean:
	echo "cleaning"
	rm -rf lib/*.js

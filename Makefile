SAUCE_CONNECT_JAR = $(wildcard ext/*.jar)

.PHONY: clean build install
install:
	@mkdir -p ext
	$(if $(SAUCE_CONNECT_JAR),,cd ext; wget $(npm_package_sauce_connect_url); unzip Sauce-Connect-latest.zip)

build:
	coffee -o lib/ -c src/

clean:
	rm -rf lib/*.js

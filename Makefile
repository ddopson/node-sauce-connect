SAUCE_CONNECT_JAR = $(wildcard ext/*.jar)
PATH := ./node_modules/.bin:${PATH}

.PHONY : install
install:
	coffee -o lib/ -c src/
	@mkdir -p ext
	$(if $(SAUCE_CONNECT_JAR),,cd ext; wget $(npm_package_sauce_connect_url); unzip Sauce-Connect-latest.zip)


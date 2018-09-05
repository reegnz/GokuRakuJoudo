all:
	$(MAKE) compile
	$(MAKE) bin
compile:
	lein compile && lein uberjar
bin:
	native-image -H:+ReportUnsupportedElementsAtRuntime --no-server -jar $(PWD)/target/karabiner-configurator-0.1.0-SNAPSHOT-standalone.jar
	mv karabiner-configurator-0.1.0-SNAPSHOT-standalone goku
local:
	make -f Makefile.local
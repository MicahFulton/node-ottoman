test:
	./node_modules/mocha/bin/mocha test/*.test.js
fasttest:
	./node_modules/mocha/bin/mocha test/*.test.js -ig "(slow)"

lint:
	./node_modules/jshint/bin/jshint lib/*.js

cover:
	node ./node_modules/istanbul/lib/cli.js cover ./node_modules/mocha/bin/_mocha -- test/*.test.js
fastcover:
	node ./node_modules/istanbul/lib/cli.js cover ./node_modules/mocha/bin/_mocha -- test/*.test.js -ig "(slow)"

check: test lint cover

docs: node_modules
	node ./node_modules/jsdoc/jsdoc.js -c .jsdoc

.PHONY: test fasttest lint cover fastcover check docs
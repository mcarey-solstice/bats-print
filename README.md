# bats-print
Prints bats output

## Installation
```
git submodule add https://github.com/mike-carey/bats-print ${TEST_DIR:-test}/helpers/print
```

then in test: `${TEST_DIR:-test}/${TEST_NAME}.bash`
```
load helpers/print/bprint
```

or without submodule with curl
```
mkdir -p ${TEST_DIR:-test}/helpers && curl -sL https://raw.githubusercontent.com/mike-carey/bats-print/master/bprint.bash -O ${TEST_DIR:-test}/helpers/bprint.bash
```

or without submodule with wget
```
mkdir -p ${TEST_DIR:-test}/helpers && wget https://raw.githubusercontent.com/mike-carey/bats-print/master/bprint.bash -O ${TEST_DIR:-test}/helpers/bprint.bash
```

then in test: `${TEST_DIR:-test}/${TEST_NAME}.bash`
```
load helpers/bprint
```

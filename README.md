## Compile
- rebar compile

## Run
- erl -pa ebin
- application:load(iserve).
- application:start(sasl).
- application:start(mnesia).

- iserve:create_table().
- iserve:add_callback(8080, 'GET', "/", test_iserve_app, do_get).

## test
- curl -XGET 'http://localhost:8080/'
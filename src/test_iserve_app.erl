-module (test_iserve_app).

-export([do_get/2]).
-include("iserve.hrl").

do_get(#req{} = Req, Args) ->
	{200, [], <<"<!DOCTYPE html>
<html>
<head>
  <title>Welcome to iserve</title>
</head>
<body>
  Hello
</body>
</html>">>}.
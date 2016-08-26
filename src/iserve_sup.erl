-module(iserve_sup).

-behaviour(supervisor).

%% API
-export([start_link/0]).

%% Supervisor callbacks
-export([init/1]).

%% Helper macro for declaring children of supervisor
-define(CHILD(I, Type), {I, {I, start_link, []}, permanent, 5000, Type, [I]}).

%% ===================================================================
%% API functions
%% ===================================================================

start_link() ->
    supervisor:start_link({local, ?MODULE}, ?MODULE, []).

%% ===================================================================
%% Supervisor callbacks
%% ===================================================================

init([]) ->
    Port = get_config(),
    Server = {iserve_server, {iserve_server, start_link, [Port]},
    	permanent, 2000, worker, [iserve_server]},
    {ok, {{one_for_one, 10, 1}, [Server]}}.

get_config() -> 8080.




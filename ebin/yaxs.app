%% -*- erlang -*-
{ application, yaxs,
  [{ description, "Yet Another XMPP Server" },
   { vsn, "0.1" },
   { modules, [ 
		yaxs, yaxs_app, yaxs_sup, yaxs_con, yaxs_client,
		yaxs_core_stream, yaxs_core_tls, yaxs_core_sasl,
		yaxs_core_sasl_digest_md5, yaxs_core_bind,
		yaxs_core_jabberclient, yaxs_core_iq, yaxs_core
	       ]},
   { registered, [ 
		   yaxs_sup, yaxs_con, yaxs_client_sup,
		   yaxs_event, yaxs_core
		  ]},
   { applications, [ 
		     kernel, stdlib, 
		     sasl, erlsom,
		     gen_listener_tcp
		    ]},
   { mod, { yaxs_app, []}},
   { start_phases, []},
   { env, [
	   {mods, [
		   yaxs_core_stream,
		   yaxs_core_tls,
		   yaxs_core_sasl,
		   yaxs_core_sasl_digest_md5,
		   yaxs_core_bind,
		   yaxs_core_jabberclient,
		   yaxs_core_iq
		  ]}
	  ]}
  ]
 }.

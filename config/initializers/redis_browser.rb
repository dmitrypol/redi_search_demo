settings = {"connections"=>{
  "default" =>{"url"=>"redis://localhost:6379/0"},
  "db1"	    =>{"url"=>"redis://localhost:6379/1"},
  "db2"	    =>{"url"=>"redis://localhost:6379/2"},
  }}

RedisBrowser.configure(settings)

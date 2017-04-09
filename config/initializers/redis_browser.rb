settings = {"connections"=>{
  "default" =>{"url"=>"redis://localhost:6379/0"},
  "db1"	    =>{"url"=>"redis://localhost:6379/1"},
  }}

RedisBrowser.configure(settings)

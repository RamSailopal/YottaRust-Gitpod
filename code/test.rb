require 'mg_ruby'
mg_ruby = MG_RUBY.new()
mg_ruby.m_set_host('localhost', 7042, '', '')
mg_ruby.m_set("^TEST", "1", "Testing")
res = mg_ruby.m_get("^TEST", "1")
puts res.inspect

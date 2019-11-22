require "ffi"

module Shlex
  extend FFI::Library
  ffi_lib File.expand_path("./shlex.so", File.dirname(__FILE__))
  attach_function :splitter, [:string], :string
end

puts Shlex.splitter("sh -c 'exec /opt/bin/flanneld -logtostderr=true -iface=${NODE_IP}'")
puts Shlex.splitter("sh -c i'asdfadsf\"").inspect


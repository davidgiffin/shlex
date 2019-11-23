require 'ffi'
require 'json'

module Shlex
  extend FFI::Library
  ffi_lib File.expand_path("../ext/shlex.so", File.dirname(__FILE__))
  attach_function :splitter, [:string], :string

  def self.split(str)
    Shlex.splitter(str)
  end
end


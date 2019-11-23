require 'ffi'
require 'json'
require 'ostruct'

module Shlex
  extend FFI::Library
  ffi_lib File.expand_path("../ext/shlex.so", File.dirname(__FILE__))
  attach_function :splitter, [:string], :string

  def self.split(str)
    data = JSON.load(Shlex.splitter(str))
    OpenStruct.new({args: data['Args'], error: data['Error']})
  end
end


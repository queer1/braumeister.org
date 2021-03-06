# This code is free software; you can redistribute it and/or modify it under
# the terms of the new BSD License.
#
# Copyright (c) 2013, Sebastian Staudt

if defined? MacOS
  MacOS.methods.select { |m| m.to_s =~ /_version$/ }.each do |m|
    MacOS.send :undef_method, m
    MacOS.send :define_method, m, ->{ '0' }
  end
end

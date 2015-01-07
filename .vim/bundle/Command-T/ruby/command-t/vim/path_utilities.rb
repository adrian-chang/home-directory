# Copyright 2010-2014 Greg Hurrell. All rights reserved.
# Licensed under the terms of the BSD 2-clause license.

require 'command-t/vim'

module CommandT
  module VIM
    module PathUtilities

    private

      def relative_path_under_working_directory(path)
        # any path under the working directory will be specified as a relative
        # path to improve the readability of the buffer list etc
        pwd = File.expand_path(VIM::pwd) + '/'
        path.index(pwd) == 0 ? path[pwd.length..-1] : path
      end

      def nearest_ancestor(starting_directory, markers)
        path = File.expand_path(starting_directory)
        while !markers.
          map { |dir| File.join(path, dir) }.
          map { |dir| File.exist?(dir) }.
          any?
          return nil if path == '/'
          path = File.expand_path(File.join(path, '..'))
        end
        path
      end

    end # module PathUtilities
  end # module VIM
end # module CommandT

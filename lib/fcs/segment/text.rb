
require 'fcs/helpers'

module FCS
  module Segment
    class Text
      include FCS::Helpers

      attr_reader :blob
      def initialize(*args)
        @blob = args.first
        @hash = begin
                  _h_from_a(@blob.split('/'))
                rescue
                  {}
                end
      end

      def keys; @hash.keys; end
      def values; @hash.values; end
      def [](k); @hash[k]; end
        
    end
  end
end

# vim: set sw=2 sts=2 ai et:

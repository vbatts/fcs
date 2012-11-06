
require 'fcs/helpers'

=begin
outlining the Flow Cytommetry specification

http://murphylab.web.cmu.edu/FCSAPI/FCS3.html
=end
module FCS
  module Segment
    class Header
      include FCS::Helpers

      attr_reader :blob
      def initialize(*args)
        # TODO have this incrementally read from an io
        @blob = args.first
      end

      def to_s
        '<%s version=%s text_begin=%d text_end=%d data_begin=%d data_end=%d analysis_begin=%d analysis_end=%d>' % [
          self.class.name, version, text_begin, text_end, data_begin, data_end, analysis_begin, analysis_end
        ]
      end

      def version
        _s @blob[0..5]
      end
      def text_begin
        _i @blob[10..17]
      end
      def text_end
        _i @blob[18..25]
      end
      def data_begin
        _i @blob[26..33]
      end
      def data_end
        _i @blob[34..41]
      end
      def analysis_begin
        _i @blob[42..49]
      end
      def analysis_end
        _i @blob[50..57]
      end
      def other
        return nil unless text_begin() > 58
        @blob[58..text_begin()].strip
      end

    end
  end
end

# vim: set sw=2 sts=2 ai et:

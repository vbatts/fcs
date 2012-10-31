
=begin
outlining the Flow Cytommetry specification

http://murphylab.web.cmu.edu/FCSAPI/FCS3.html
=end
module FCS
  class Header
    attr_reader :blob
    def initialize(*args)
      @blob = args.first
    end

    def version
      @blob[0..5]
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

    def _i(s)
      begin
        s.strip.to_i
      rescue
        nil
      end
    end
    private :_i
  end
end




module FCS
  module Helpers
    def _s(s)
      begin
        s
      rescue
        nil
      end
    end
    private :_s

    def _i(s)
      begin
        s.strip.to_i
      rescue
        nil
      end
    end
    private :_i
    
    def _h_from_a(arr)
      return unless (arr.length % 2) == 0

      h = Hash.new
      k = nil
      (0..arr.length).each do |i|
        if (i % 2) == 0
          k = arr[i]
        else
          h[k] = arr[i]
        end
      end

      return h
    end
    private :_h_from_a
  end
end

# vim: set sw=2 sts=2 ai et:

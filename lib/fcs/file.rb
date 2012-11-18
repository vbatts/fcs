
module FCS
  class File

    # Takes either an IO or a filename
    # of an *.fcs file
    def initialize(*args)
      if args.first.respond_to? :read
        @io = args.first
      else
        @io = ::File.open(args.first)
      end
    end

    # build and/or return a FCS::Segment::Header
    def header
      @io.seek(0) if @header.nil?
      @header ||= FCS::Segment::Header.new(@io.readline)
    end

    # build and/or return a FCS::Segment::Text
    def text
      unless @text.nil?
        @io.seek(header.text_begin + 1)
      end
      @text ||= FCS::Segment::Text.new(@io.read(header.text_end - header.text_begin))
    end

    # These are usually large, so lets not store it
    def data
      @io.seek(header.data_begin)
      @io.read(header.data_end - header.data_begin)
    end
  end
end

# vim: set sw=2 sts=2 ai et:

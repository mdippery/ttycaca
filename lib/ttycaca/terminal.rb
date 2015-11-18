require 'highline'

module Ttycaca
  class Terminal
    def initialize
      @term = HighLine.new
    end

    def width
      @term.output_cols
    end

    def height
      @term.output_rows
    end
  end
end

require 'cgi'

module URI
  def self.escape(str)
    URI::DEFAULT_PARSER.escape(str)
  end
end 
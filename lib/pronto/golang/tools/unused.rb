module Pronto
  module GolangTools
    class Unused < Base
      def self.base_command
        'unused'
      end

      def parse_line(line)
        file_path, line_number, _, message = line.split(':')

        return file_path, line_number, :warning, message.to_s.strip
      end
    end
  end
end

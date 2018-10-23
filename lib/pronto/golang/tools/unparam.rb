module Pronto
  module GolangTools
    class Unparam
      def command(file_path)
        "#{base_command} ./..."
      end

      def base_command
        'unparam'
      end

      def installed?
        `which #{base_command}` != ""
      end

      def parse_line(line)
        file_path, line_number, _, message = line.split(':')

        [file_path, line_number, :warning, message.strip]
      end
    end
  end
end

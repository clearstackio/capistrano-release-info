module Capistrano
  module ReleaseInfo
    VERSION = "0.2.0"

    @@releases = []

    class << self
      def current
        releases.last
      end

      def releases
        return @@releases if @@releases.present?

        # Build releases
        regex = %r{Branch (?<branch>.*) \(at (?<version>.*)\) deployed as release (?<released_at>.*) by (?<released_by>.*)}
        deployements = File.read("#{::Rails.root}/../revisions.log").split("\n")
        deployements.each do |deployement|
          if matches = deployement.match(regex)
            deployement_info = matches.named_captures.symbolize_keys
            @@releases << deployement_info.update(
                released_at: DateTime.strptime(deployement_info[:released_at], "%Y%m%d%H%M%S").in_time_zone
            )
          end
        end

        @@releases
      end
    end
  end
end

class Kinployment
  module Scoring
    module Availability

      ##
      # A service object that calculates the strength of a match between a
      # Kinployment and Kinployee in terms of availability.

      class SimpleAvailabilityScorer

        ##
        # Constructor.

        def initialize( kinployment )
          @kinployment  = kinployment
        end

        ##
        # Calculate the availibility match score for the given Kinployee
        # relative to this instance's Kinployment.

        def score_for( kinployee )
          @kinployment.preferred_availability <= kinployee.availability ?
            1.0 :
            0.0
        end

      end
    end
  end
end
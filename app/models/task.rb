class Task < ApplicationRecord
    @@now = Time.now
    def diff_for_hummans
        distance_of_time_in_words(@@now, created_at) 
    end
end

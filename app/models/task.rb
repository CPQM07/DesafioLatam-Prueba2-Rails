class Task < ApplicationRecord
    has_and_belongs_to_many :users
    @@now = Time.now
    def diff_for_hummans
        distance_of_time_in_words(@@now, created_at) 
    end

    def check_done_task(current_task, user)
        user = User.find(user.id)
        user.tasks.exists? current_task.id
    end
end

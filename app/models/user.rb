class User < ApplicationRecord
  has_and_belongs_to_many :tasks
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  def done_task user
    user = User.find user.id
    completed = user.tasks.count
    task = Task.all.count
    "Estimado usuario #{user.email}, usted a completado #{completed}/#{task} tareas"   
  end
  
end

User.destroy_all
u1 = User.create(:image => 'https://i.imgur.com/vedQYVM.jpg', :name => 'Admin', :email => 'admin@gmail.com', :location => 'Sydney', :password => 'admin', :admin => true)
u2 = User.create(:image => 'https://i.imgur.com/3ukJaY7.jpg', :name => 'Julie', :email => 'julie@gmail.com', :location => 'Sydney', :password => 'julie', :admin => false)
u3 = User.create(:image => 'https://i.imgur.com/d4ZN1sS.jpg', :name => 'Monique', :email => 'monique@gmail.com', :location => 'Sydney', :password => 'monique', :admin => false)



Task.destroy_all
t1 = Task.create(:name => 'Reusable Bottle', :description => 'Refill your reusable bottle', :category => 'Food & Drink', :score => 2)
t2 = Task.create(:name => 'Keep Cup', :description => 'Buy a keep cup for your next coffee', :category => 'Shopping', :score => 3)
t3 = Task.create(:name => 'Silver Spoon', :description => 'Pack your cutlery for your next lunch', :category => 'Waste', :score => 2)
t4 = Task.create(:name => 'Brush smart', :description => 'Turn off the water when brushing your teeth', :category => 'Water', :score => 3)
t5 = Task.create(:name => 'Carpooling', :description => 'Share your next ride', :category => 'Transport', :score => 2)


Achievement.destroy_all
a1 = Achievement.create(:user_id => 3, :task_id => 3)
a2 = Achievement.create(:user_id => 4, :task_id => 4)

User.destroy_all
u1 = User.create(:name => 'Admin', :email => 'admin@ga.co', :location => 'Sydney', :password => 'admin', :admin => true)


Task.destroy_all
t1 = Task.create(:name => 'Reusable Bottle', :description => 'Refill your reusable bottle', :category => 'Food & Drink', :score => '2')
t2 = Task.create(:name => 'Keep Cup', :description => 'Buy a keep cup for your next coffee', :category => 'Shopping', :score => '3')
t3 = Task.create(:name => 'Silver Spoon', :description => 'Pack your cutlery for your next lunch', :category => 'Waste', :score => '2')
t4 = Task.create(:name => 'Brush smart', :description => 'Turn off the water when brushing your teeth', :category => 'Water', :score => '3')
t5 = Task.create(:name => 'Carpooling', :description => 'Share your next ride', :category => 'Transport', :score => '2')

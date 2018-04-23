User.destroy_all
u1 = User.create(:image => 'https://i.imgur.com/vedQYVM.jpg', :name => 'Admin', :email => 'admin@gmail.com', :location => 'Sydney', :password => 'admin', :admin => true)
u2 = User.create(:image => 'https://i.imgur.com/3ukJaY7.jpg', :name => 'Julie', :email => 'julie@gmail.com', :location => 'Sydney', :password => 'julie', :admin => false)
u3 = User.create(:image => 'https://i.imgur.com/d4ZN1sS.jpg?1', :name => 'Monique', :email => 'monique@gmail.com', :location => 'Sydney', :password => 'monique', :admin => false)

Task.destroy_all
t1 = Task.create(:name => 'Reusable Bottle', :description => 'Refill your reusable bottle', :category => 'Food & Drink', :score => 2, :image=>'http://res.cloudinary.com/dbenxy2yz/image/upload/v1524304487/c1by25q6k3y6hb8uwkpw.jpg')
t2 = Task.create(:name => 'Keep Cup', :description => 'Buy a keep cup for your next coffee', :category => 'Shopping', :score => 3, :image=>'http://res.cloudinary.com/dbenxy2yz/image/upload/v1524290827/q4t439y1xvo6pqu4xvoa.jpg')
t3 = Task.create(:name => 'Silver Spoon', :description => 'Pack your cutlery for your next lunch', :category => 'Waste', :score => 2,:image=>'http://res.cloudinary.com/dbenxy2yz/image/upload/v1524290881/qzwhp9yxuresyclm8jyx.jpg')
t4 = Task.create(:name => 'Brush smart', :description => 'Turn off the water when brushing your teeth', :category => 'Water', :score => 3,:image=>'http://res.cloudinary.com/dbenxy2yz/image/upload/v1524290845/zve586ior13pyesycfmc.png')
t5 = Task.create(:name => 'Carpooling', :description => 'Share your next ride', :category => 'Transport', :score => 2)


u2.tasks << t1
u2.tasks << t2
u3.tasks << t3
u3.tasks << t4

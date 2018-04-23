User.destroy_all
u1 = User.create(:image => 'https://i.imgur.com/vedQYVM.jpg', :name => 'Admin', :email => 'admin@gmail.com', :location => 'Sydney', :password => 'admin', :admin => true)
u2 = User.create(:image => 'https://i.imgur.com/3ukJaY7.jpg', :name => 'Julie', :email => 'julie@gmail.com', :location => 'Brisbane', :password => 'julie', :admin => false)
u3 = User.create(:image => 'https://i.imgur.com/d4ZN1sS.jpg?1', :name => 'Monique', :email => 'monique@gmail.com', :location => 'Darwin', :password => 'monique', :admin => false)
u4 = User.create(:image => 'https://i.imgur.com/Dms8wUV.jpg', :name => 'Sarabjit', :email => 'sarabjit@gmail.com', :location => 'Adelaide', :password => 'sarabjit', :admin => false)
u5 = User.create(:image => 'https://i.imgur.com/jYVkwxD.jpg', :name => 'John', :email => 'john@gmail.com', :location => 'Melbourne', :password => 'john', :admin => false)
u6 = User.create(:image => 'https://i.imgur.com/27CRqKG.jpg', :name => 'Theo', :email => 'theo@gmail.com', :location => 'Perth', :password => 'theo', :admin => false)
u7 = User.create(:image => 'https://i.imgur.com/b5d6bbL.jpg', :name => 'Joel', :email => 'joel@gmail.com', :location => 'Hobart', :password => 'joel', :admin => false)

Task.destroy_all
t1 = Task.create(:name => 'Reusable Bottle', :description => 'Refill your reusable bottle', :category => 'Food & Drink', :score => 2, :image =>'http://res.cloudinary.com/dbenxy2yz/image/upload/v1524304487/c1by25q6k3y6hb8uwkpw.jpg')
t2 = Task.create(:name => 'Leftovers', :description => 'Eat last nights dinner for lunch next day', :category => 'Food & Drink', :score => 3, :image => 'http://res.cloudinary.com/dyi0udlrl/image/upload/v1524463526/T020-00024-5.jpg')
t3 = Task.create(:name => 'Meatless Day', :description => 'Swap the meat on your plate one day a week', :category => 'Food & Drink', :score => 2)
t4 = Task.create(:name => 'Pint It', :description => 'Go for a pint instead of a bottled beer at your next bar visit', :category => 'Food & Drink', :score => 2)
t5 = Task.create(:name => 'Shop local', :description => 'Shop fresh at your local market and avoid packaging', :category => 'Food & Drink', :score => 3)

t6 = Task.create(:name => 'Keep Cup', :description => 'Buy a keep cup for your next coffee', :category => 'Shopping', :score => 3, :image =>'http://res.cloudinary.com/dbenxy2yz/image/upload/v1524290827/q4t439y1xvo6pqu4xvoa.jpg')
t7 = Task.create(:name => 'Reusable Bag', :description => 'Get a reusable bag and score points every time you say no to a plastic bag', :category => 'Shopping', :score => 3)
t8 = Task.create(:name => 'Shop Secondhand', :description => 'Buy secondhand instead of new items', :category => 'Shopping', :score => 4)
t9 = Task.create(:name => 'Go Topless', :description => 'Ditch the lid or straw on your bevarage', :category => 'Shopping', :score => 2)
t10 = Task.create(:name => 'Rag it', :description => 'Use a rag instead of paper-towels when possible', :category => 'Shopping', :score => 1)

t11 = Task.create(:name => 'Silver Spoon', :description => 'Pack your cutlery for your next lunch', :category => 'Waste', :score => 2,:image =>'http://res.cloudinary.com/dbenxy2yz/image/upload/v1524290881/qzwhp9yxuresyclm8jyx.jpg')
t12 = Task.create(:name => 'Feed The Worms', :description => 'Earn points for every time you compost your food waste', :category => 'Waste', :score => 2)
t13 = Task.create(:name => 'Online Billing', :description => 'Switch to online billing and save paper', :category => 'Waste', :score => 2)
t14 = Task.create(:name => 'Recycle', :description => 'Make sure your recyclable waste goes to the right bin', :category => 'Waste', :score => 3)
t15 = Task.create(:name => 'Electronic Exit', :description => 'Recycle your old electronics and save the earth from rare metals', :category => 'Waste', :score => 4)


t16 = Task.create(:name => 'Brush Smart', :description => 'Turn off the water when brushing your teeth', :category => 'Water', :score => 2,:image =>'http://res.cloudinary.com/dbenxy2yz/image/upload/v1524290845/zve586ior13pyesycfmc.png')
t17 = Task.create(:name => 'Quick Showers', :description => 'Save water by reducing your time in the shower', :category => 'Water', :score => 3)
t18 = Task.create(:name => 'Fill It Up', :description => 'Do not run your dishwasher unless it is full', :category => 'Water', :score => 2)
t19 = Task.create(:name => 'No Dripping', :description => 'Fix your dripping taps and save many liters of water per day', :category => 'Water', :score => 4)
t20 = Task.create(:name => 'Full Load', :description => 'Only run your washing machine on full load', :category => 'Water', :score => 2)

t21 = Task.create(:name => 'Carpooling', :description => 'Share your next ride', :category => 'Transport', :score => 4)
t22 = Task.create(:name => 'Walk About', :description => 'Get that excersice in by walking, and save money at the same time', :category => 'Transport', :score => 3)
t23 = Task.create(:name => 'Ride Public', :description => 'Take the bus or train instead of the car for your next trip', :category => 'Transport', :score => 2)
t24 = Task.create(:name => 'Flex Work', :description => 'Work from home and save that trip to work', :category => 'Transport', :score => 2)
t25 = Task.create(:name => 'Bike Away', :description => 'Take your bike to your next destination', :category => 'Transport', :score => 3)


t26 = Task.create(:name => 'Wash Cold', :description => 'Wash your clothes in cold water', :category => 'Energy', :score => 3)
t27 = Task.create(:name => 'Unplugg', :description => 'Your electronics can still be sucking energy even if switched off, unplugg', :category => 'Energy', :score => 2)
t28 = Task.create(:name => 'Hang Them Up', :description => 'Hang your clothes instead of using the dryer', :category => 'Energy', :score => 3)
t29 = Task.create(:name => 'Switch For LED', :description => 'Upgrade your light bulbs for LED and save energy and money in the long run', :category => 'Energy', :score => 4)
t30 = Task.create(:name => 'Sunshine', :description => 'Let the sun shine in and warm up your home', :category => 'Energy', :score => 1)


u2.tasks << t1
u2.tasks << t2
u2.tasks << t3
u2.tasks << t4
u3.tasks << t5
u3.tasks << t6
u3.tasks << t7
u3.tasks << t8
u4.tasks << t9
u4.tasks << t10
u4.tasks << t11
u4.tasks << t12
u5.tasks << t13
u5.tasks << t14
u5.tasks << t15
u6.tasks << t16
u6.tasks << t17
u6.tasks << t18

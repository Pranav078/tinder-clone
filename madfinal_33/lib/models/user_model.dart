class User {
  final int id;
  final String name;
  final String imageUrl;
  final bool isOnline;

  User({
    required this.id,
    required this.name,
    required this.imageUrl,
    required this.isOnline,
  });
}

// YOU - current user
final User currentUser = User(
  id: 0,
  name: 'user1',
  imageUrl: 'assets/user1.jpg',
  isOnline: true,
);

// USERS
final User ironMan = User(
  id: 1,
  name: 'user2',
  imageUrl: 'assets/user2.jpg',
  isOnline: true,
);
final User captainAmerica = User(
  id: 2,
  name: 'user3',
  imageUrl: 'assets/user3.jpg',
  isOnline: true,
);
final User hulk = User(
  id: 3,
  name: 'uesr4',
  imageUrl: 'assets/user4.jpg',
  isOnline: false,
);
final User scarletWitch = User(
  id: 4,
  name: 'user5',
  imageUrl: 'assets/user5.jpg',
  isOnline: false,
);
final User spiderMan = User(
  id: 5,
  name: 'user6',
  imageUrl: 'assets/user6.jpg',
  isOnline: true,
);
final User blackWindow = User(
  id: 6,
  name: 'user7',
  imageUrl: 'assets/user7.jpg',
  isOnline: false,
);
final User thor = User(
  id: 7,
  name: 'user8',
  imageUrl: 'assets/user8.jpg',
  isOnline: false,
);
final User captainMarvel = User(
  id: 8,
  name: 'user9',
  imageUrl: 'assets/user9.jpg',
  isOnline: false,
);
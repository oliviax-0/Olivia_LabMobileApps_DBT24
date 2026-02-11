import '../models/user_model.dart';
import '../models/message_model.dart';

// Dummy Contacts List
final List<User> friendsData = [
  User(
    id: 1,
    name: 'Olivia',
    imageUrl: 'https://i.pravatar.cc/150?img=5',
    lastMessage: 'Ok, sipp...',
    time: '9:40 AM',
    lastSeen: '9:45 AM',
  ),
  User(
    lastSeen: '9:45 AM',
    id: 2,
    name: 'Grace',
    imageUrl: 'https://i.pravatar.cc/150?img=9',
    lastMessage: 'See you tomorrow',
    time: '8:10 PM',
  ),
  User(
    lastSeen: '8:12 PM',
    id: 3,
    name: 'Chessa',
    imageUrl: 'https://i.pravatar.cc/150?img=11',
    lastMessage: 'Ok',
    time: 'Monday',
  ),
  User(
    lastSeen: 'Monday 1:20 PM',
    id: 4,
    name: 'Monik',
    imageUrl: 'https://i.pravatar.cc/150?img=3',
    lastMessage: 'Woi udah kerjain ya',
    time: '7:25 PM',
  ),
  User(
    lastSeen: '7:40 PM',
    id: 5,
    name: 'Victor',
    imageUrl: 'https://i.pravatar.cc/150?img=1',
    lastMessage: 'Temannya AI & Automation',
    time: 'Yesterday',
  ),
  User(
    lastSeen: 'Yesterday 4:10 PM',
    id: 6,
    name: 'Arji',
    imageUrl: 'https://i.pravatar.cc/150?img=10',
    lastMessage: 'Makasih brok',
    time: '10:15 AM',
  ),
];

// Dummy Chat History for a specific user
final List<Message> mockMessages = [
  Message(
    text: 'Halo, Olivia.',
    isMe: true,
    time: DateTime.now().subtract(const Duration(minutes: 10)),
  ),
  Message(
    text: 'Are you available to work?',
    isMe: true,
    time: DateTime.now().subtract(const Duration(minutes: 9)),
  ),
  Message(
    text: 'If you are interested, let me know.',
    isMe: true,
    time: DateTime.now().subtract(const Duration(minutes: 9)),
  ),
  Message(
    text: "Hey, I'm open for work, plz share me further details.",
    isMe: false,
    time: DateTime.now().subtract(const Duration(minutes: 5)),
  ),
  Message(
    text: "Sure I'll share you.",
    isMe: true,
    time: DateTime.now().subtract(const Duration(minutes: 4)),
  ),
  Message(
    text: 'www.dribbble.com/fbdjbj/df',
    isMe: true,
    time: DateTime.now().subtract(const Duration(minutes: 4)),
  ),
  Message(
    text: 'Hey i have shared you the link.',
    isMe: true,
    time: DateTime.now().subtract(const Duration(minutes: 3)),
  ),
  Message(text: 'Ok, sipp...', isMe: false, time: DateTime.now()),
];

final Map<int, List<Message>> allMessages = {
  1: mockMessages,
  2: [
    Message(
      text: 'Hi Grace, how are you?',
      isMe: true,
      time: DateTime.now().subtract(const Duration(days: 1, hours: 2)),
    ),
    Message(
      text: 'I am good, how about you?',
      isMe: false,
      time: DateTime.now().subtract(
        const Duration(days: 1, hours: 1, minutes: 59),
      ),
    ),
    Message(
      text: 'I am doing great!',
      isMe: true,
      time: DateTime.now().subtract(
        const Duration(days: 1, hours: 1, minutes: 58),
      ),
    ),
    Message(
      text: 'See you tomorrow',
      isMe: false,
      time: DateTime.now().subtract(const Duration(days: 1)),
    ),
  ],
  3: [
    Message(
      text: 'Hi Chessa',
      isMe: true,
      time: DateTime.now().subtract(const Duration(days: 2, hours: 5)),
    ),
    Message(
      text: 'Hello',
      isMe: false,
      time: DateTime.now().subtract(
        const Duration(days: 2, hours: 5, minutes: 1),
      ),
    ),
    Message(
      text: 'Ok',
      isMe: true,
      time: DateTime.now().subtract(
        const Duration(days: 2, hours: 5, minutes: 2),
      ),
    ),
  ],
  4: [
    Message(
      text: 'Woi',
      isMe: false,
      time: DateTime.now().subtract(const Duration(days: 3, minutes: 5)),
    ),
    Message(
      text: 'Woi udah kerjain ya',
      isMe: true,
      time: DateTime.now().subtract(const Duration(days: 3)),
    ),
  ],
  5: [
    Message(
      text: 'Bro',
      isMe: true,
      time: DateTime.now().subtract(const Duration(days: 4, hours: 10)),
    ),
    Message(
      text: 'Temannya AI & Automation',
      isMe: false,
      time: DateTime.now().subtract(
        const Duration(days: 4, hours: 10, minutes: 5),
      ),
    ),
  ],
  6: [
    Message(
      text: 'Bro, makasih ya',
      isMe: true,
      time: DateTime.now().subtract(const Duration(days: 5, minutes: 5)),
    ),
    Message(
      text: 'Makasih brok',
      isMe: false,
      time: DateTime.now().subtract(const Duration(days: 5)),
    ),
  ],
};

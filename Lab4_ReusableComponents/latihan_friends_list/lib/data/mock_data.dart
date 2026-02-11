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
  Message(text: 'Halo, Olivia.', isMe: true, time: '9:30 AM'),
  Message(text: 'Are you available to work?', isMe: true, time: '9:31 AM'),
  Message(
    text: 'If you are interested, let me know.',
    isMe: true,
    time: '9:31 AM',
  ),
  Message(
    text: "Hey, I'm open for work, plz share me further details.",
    isMe: false,
    time: '9:35 AM',
  ),
  Message(text: "Sure I'll share you.", isMe: true, time: '9:36 AM'),
  Message(text: 'www.dribbble.com/fbdjbj/df', isMe: true, time: '9:36 AM'),
  Message(text: 'Hey i have shared you the link.', isMe: true, time: '9:37 AM'),
  Message(text: 'Ok, sipp...', isMe: false, time: '9:40 AM'),
];

final Map<int, List<Message>> allMessages = {
  1: mockMessages,
  2: [
    Message(text: 'Hi Grace, how are you?', isMe: true, time: '8:00 PM'),
    Message(text: 'I am good, how about you?', isMe: false, time: '8:01 PM'),
    Message(text: 'I am doing great!', isMe: true, time: '8:02 PM'),
    Message(text: 'See you tomorrow', isMe: false, time: '8:10 PM'),
  ],
  3: [
    Message(text: 'Hi Chessa', isMe: true, time: 'Mon 1:00 PM'),
    Message(text: 'Hello', isMe: false, time: 'Mon 1:01 PM'),
    Message(text: 'Ok', isMe: true, time: 'Mon 1:02 PM'),
  ],
  4: [
    Message(text: 'Woi', isMe: false, time: '7:20 PM'),
    Message(text: 'Woi udah kerjain ya', isMe: true, time: '7:25 PM'),
  ],
  5: [
    Message(text: 'Bro', isMe: true, time: 'Yesterday 3:00 PM'),
    Message(
      text: 'Temannya AI & Automation',
      isMe: false,
      time: 'Yesterday 3:05 PM',
    ),
  ],
  6: [
    Message(text: 'Bro, makasih ya', isMe: true, time: '10:10 AM'),
    Message(text: 'Makasih brok', isMe: false, time: '10:15 AM'),
  ],
};

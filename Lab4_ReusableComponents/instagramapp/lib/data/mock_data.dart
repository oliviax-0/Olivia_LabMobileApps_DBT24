import 'package:instagramapp/model/user_model.dart';
import 'package:instagramapp/model/story_model.dart';
import 'package:instagramapp/model/post_model.dart';
import 'package:instagramapp/model/message_model.dart';
import 'package:instagramapp/model/direct_message_model.dart';
import 'package:instagramapp/model/conversation_model.dart';

const UserModel currentUser = UserModel(
  username: 'your_story',
  avatarUrl: 'https://i.pravatar.cc/150?img=65',
  displayName: 'You',
);

const UserModel dumbdoewUser = UserModel(
  username: 'dumbdoew',
  avatarUrl: 'https://i.pravatar.cc/150?img=52',
  displayName: 'dumbdoew',
  postCount: 1,
  followerCount: 29,
  mutualInfo: 'You both follow olylfe_ and 15 others',
);

const UserModel elivgiovniUser = UserModel(
  username: 'elivgiovni',
  avatarUrl: 'https://i.pravatar.cc/150?img=1',
  displayName: 'elivgiovni',
  postCount: 8,
  followerCount: 112,
  mutualInfo: 'You both follow olylfe_ and 6 others',
);

const UserModel livUser = UserModel(
  username: 'liv',
  avatarUrl: 'https://i.pravatar.cc/150?img=2',
  displayName: 'liv',
  postCount: 35,
  followerCount: 540,
  mutualInfo: 'You both follow juneofgrace and 3 others',
);

const UserModel magangHunterUser = UserModel(
  username: 'MAGANG HUNTER 🔥',
  avatarUrl: 'https://i.pravatar.cc/150?img=3',
  displayName: 'MAGANG HUNTER',
  postCount: 154,
  followerCount: 1890,
  mutualInfo: 'Followed by maganginfo_',
);

const UserModel smllngUser = UserModel(
  username: 'smllng',
  avatarUrl: 'https://i.pravatar.cc/150?img=4',
  displayName: 'smllng',
  postCount: 12,
  followerCount: 420,
  mutualInfo: 'You both follow dumbdoew',
);

const UserModel progUser = UserModel(
  username: 'Prog{r}amming 8.0',
  avatarUrl: 'https://i.pravatar.cc/150?img=6',
  displayName: 'Prog{r}amming 8.0',
  postCount: 210,
  followerCount: 9800,
  mutualInfo: 'Mentioned you recently',
);

const List<StoryModel> storyData = [
  StoryModel(user: currentUser, isAddStory: true),
  StoryModel(user: dumbdoewUser),
  StoryModel(user: elivgiovniUser),
  StoryModel(user: livUser),
  StoryModel(user: magangHunterUser),
  StoryModel(user: smllngUser),
  StoryModel(user: progUser),
];

const List<PostModel> postData = [
  PostModel(
    user: UserModel(
      username: 'internship.time',
      avatarUrl: 'https://i.pravatar.cc/150?img=5',
    ),
    location: 'Tulus · Mahakarya',
    imageUrls: [
      'https://picsum.photos/id/1011/800/800',
      'https://picsum.photos/id/1015/800/800',
      'https://picsum.photos/id/1018/800/800',
      'https://picsum.photos/id/1019/800/800',
      'https://picsum.photos/id/1020/800/800',
    ],
    caption: 'About Tanya.in Internship',
    likes: 1124,
  ),
  PostModel(
    user: UserModel(
      username: 'creative.studio',
      avatarUrl: 'https://i.pravatar.cc/150?img=24',
    ),
    location: 'Jakarta, Indonesia',
    imageUrls: [
      'https://picsum.photos/id/1025/800/800',
      'https://picsum.photos/id/1027/800/800',
      'https://picsum.photos/id/1029/800/800',
    ],
    caption: 'New product shots for the week.',
    likes: 842,
  ),
  PostModel(
    user: UserModel(
      username: 'night.coffee',
      avatarUrl: 'https://i.pravatar.cc/150?img=14',
    ),
    imageUrls: ['https://picsum.photos/id/1060/800/800'],
    caption: 'Late night brews ☕️',
    likes: 503,
  ),
];

final List<ConversationModel> conversationData = [
  ConversationModel(
    user: dumbdoewUser,
    lastMessage: 'WKWKKKKWKW',
    lastTime: 'JAN 29 AT 12:18',
    messages: [
      DirectMessageModel(
        sender: currentUser,
        text: 'wkwkkw dh besti ya skrg',
        time: 'JAN 29 AT 09:05',
      ),
      DirectMessageModel(
        sender: dumbdoewUser,
        text: '🙃',
        time: 'JAN 29 AT 10:24',
      ),
      DirectMessageModel(
        sender: currentUser,
        text: 'dh ngmg ga wkwkw',
        time: 'JAN 29 AT 10:24',
      ),
      DirectMessageModel(
        sender: dumbdoewUser,
        text: 'Kek ne ja oo',
        time: 'JAN 29 AT 12:18',
      ),
      DirectMessageModel(
        sender: dumbdoewUser,
        text: 'Nyambung" ja o',
        time: 'JAN 29 AT 12:18',
      ),
      DirectMessageModel(
        sender: dumbdoewUser,
        text: 'Ngomong pas plg aj lo',
        time: 'JAN 29 AT 12:18',
      ),
      DirectMessageModel(
        sender: dumbdoewUser,
        text: 'Bye"',
        time: 'JAN 29 AT 12:18',
      ),
      DirectMessageModel(
        sender: dumbdoewUser,
        text: '😭😭😭',
        time: 'JAN 29 AT 12:18',
      ),
      DirectMessageModel(
        sender: currentUser,
        text: 'WKWKKKKWKW',
        time: 'JAN 29 AT 12:18',
      ),
    ],
  ),
  ConversationModel(
    user: elivgiovniUser,
    lastMessage: 'Upgrade your skill with this bootcamp!',
    lastTime: '03:40',
    messages: [
      DirectMessageModel(
        sender: elivgiovniUser,
        text: 'Mentioned you in their story',
        subtitle: 'Story unavailable',
        time: 'SEP 27, 2023',
        isStatus: true,
      ),
      DirectMessageModel(
        sender: elivgiovniUser,
        text: 'Post unavailable',
        subtitle: 'This post is unavailable.',
        time: 'JUL 14, 2024',
        isStatus: true,
      ),
      DirectMessageModel(
        sender: currentUser,
        text: 'You mentioned elivgiovni in a comment',
        time: '03:39',
      ),
      DirectMessageModel(
        sender: currentUser,
        text: 'Upgrade your skill with this bootcamp!',
        attachmentImage: 'https://picsum.photos/seed/bootcamp/600/360',
        time: '03:40',
      ),
    ],
  ),
  ConversationModel(
    user: livUser,
    lastMessage: 'Oke, ketemu di tempat biasa.',
    lastTime: 'JUL 14 AT 18:43',
    messages: [
      DirectMessageModel(
        sender: livUser,
        text: 'Jadi ngopi sore ini?',
        time: 'JUL 14 AT 18:40',
      ),
      DirectMessageModel(
        sender: currentUser,
        text: 'Bisa, jam 7 ya.',
        time: 'JUL 14 AT 18:42',
      ),
      DirectMessageModel(
        sender: livUser,
        text: 'Oke, ketemu di tempat biasa.',
        time: 'JUL 14 AT 18:43',
      ),
    ],
  ),
  ConversationModel(
    user: magangHunterUser,
    lastMessage: 'Siap, aku kirim linknya ya.',
    lastTime: 'AUG 02 AT 11:26',
    messages: [
      DirectMessageModel(
        sender: magangHunterUser,
        text: 'Kami punya info magang terbaru minggu ini.',
        time: 'AUG 02 AT 11:20',
      ),
      DirectMessageModel(
        sender: currentUser,
        text: 'Boleh dikirim detailnya?',
        time: 'AUG 02 AT 11:25',
      ),
      DirectMessageModel(
        sender: magangHunterUser,
        text: 'Siap, aku kirim linknya ya.',
        time: 'AUG 02 AT 11:26',
      ),
    ],
  ),
  ConversationModel(
    user: smllngUser,
    lastMessage: 'Belum, bentar ya aku cek.',
    lastTime: 'JAN 03 AT 20:16',
    messages: [
      DirectMessageModel(
        sender: smllngUser,
        text: 'Lihat reels yang barusan aku kirim belum?',
        time: 'JAN 03 AT 20:14',
      ),
      DirectMessageModel(
        sender: currentUser,
        text: 'Belum, bentar ya aku cek.',
        time: 'JAN 03 AT 20:16',
      ),
    ],
  ),
  ConversationModel(
    user: progUser,
    lastMessage: 'Say hi to Prog{r}amming 8.0',
    lastTime: 'Just now',
    messages: const [],
  ),
];

final List<MessageModel> messageData = conversationData
    .map(
      (conversation) => MessageModel(
        sender: conversation.user,
        lastMessage:
            conversation.lastMessage ??
            (conversation.messages.isNotEmpty
                ? conversation.messages.last.text
                : 'Say hi to ${conversation.user.username}'),
        time:
            conversation.lastTime ??
            (conversation.messages.isNotEmpty
                ? conversation.messages.last.time
                : 'Just now'),
        isSeen: conversation.messages.isNotEmpty,
      ),
    )
    .toList();

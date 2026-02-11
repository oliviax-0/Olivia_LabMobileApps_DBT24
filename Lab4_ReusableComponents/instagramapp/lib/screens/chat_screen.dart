import 'package:flutter/material.dart';
import 'package:instagramapp/data/mock_data.dart' as mock;
import 'package:instagramapp/model/user_model.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key, required this.conversation});

  final ConversationModel conversation;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF0B1823),
      appBar: _ChatAppBar(user: conversation.user),
      body: Column(
        children: [
          Expanded(
            child: ListView(
              physics: const BouncingScrollPhysics(),
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
              children: _buildConversationBody(context),
            ),
          ),
          const _MessageInputField(),
        ],
      ),
    );
  }

  List<Widget> _buildConversationBody(BuildContext context) {
    if (conversation.messages.isEmpty) {
      return [
        _ProfileOverview(user: conversation.user),
        const SizedBox(height: 24),
        _EmptyStatePrompt(username: conversation.user.username),
        const SizedBox(height: 80),
      ];
    }

    final List<Widget> widgets = [];
    final messages = conversation.messages;

    for (var i = 0; i < messages.length; i++) {
      final message = messages[i];
      final previous = i > 0 ? messages[i - 1] : null;
      final isMe = message.sender.username == mock.currentUser.username;
      final showTimestamp = previous == null || previous.time != message.time;
      final showAvatar =
          !isMe &&
          (previous == null ||
              previous.sender.username != message.sender.username);

      if (i == 0) {
        widgets.add(const SizedBox(height: 4));
      }

      if (showTimestamp) {
        widgets.add(_TimestampLabel(time: message.time));
      }

      widgets.add(
        _ChatBubble(message: message, isMe: isMe, showAvatar: showAvatar),
      );
    }

    widgets.add(const SizedBox(height: 12));
    return widgets;
  }
}

class _ChatAppBar extends StatelessWidget implements PreferredSizeWidget {
  const _ChatAppBar({required this.user});

  final UserModel user;

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: const Color(0xFF0B1823),
      elevation: 0,
      leading: IconButton(
        icon: const Icon(Icons.arrow_back_ios_new_rounded),
        onPressed: () => Navigator.of(context).pop(),
      ),
      titleSpacing: 0,
      title: Row(
        children: [
          CircleAvatar(
            radius: 18,
            backgroundImage: NetworkImage(user.avatarUrl),
          ),
          const SizedBox(width: 12),
          Flexible(
            child: Text(
              user.username,
              style: const TextStyle(fontWeight: FontWeight.w600),
              overflow: TextOverflow.ellipsis,
              maxLines: 1,
            ),
          ),
          const SizedBox(width: 4),
          const Icon(Icons.keyboard_arrow_down, size: 18),
        ],
      ),
      actions: [
        IconButton(
          icon: const Icon(Icons.emoji_emotions_outlined),
          onPressed: () {},
        ),
        IconButton(icon: const Icon(Icons.call_outlined), onPressed: () {}),
        IconButton(icon: const Icon(Icons.videocam_outlined), onPressed: () {}),
        IconButton(icon: const Icon(Icons.info_outline), onPressed: () {}),
        const SizedBox(width: 4),
      ],
    );
  }
}

class _ChatBubble extends StatelessWidget {
  const _ChatBubble({
    required this.message,
    required this.isMe,
    required this.showAvatar,
  });

  final DirectMessageModel message;
  final bool isMe;
  final bool showAvatar;

  @override
  Widget build(BuildContext context) {
    if (message.isStatus && !isMe) {
      return _StatusMessage(message: message, showAvatar: showAvatar);
    }

    final bubbleColor = isMe
        ? const Color(0xFF8A3FFC)
        : const Color(0xFF1F2A37);
    final borderRadius = BorderRadius.only(
      topLeft: const Radius.circular(20),
      topRight: const Radius.circular(20),
      bottomLeft: Radius.circular(isMe ? 20 : 6),
      bottomRight: Radius.circular(isMe ? 6 : 20),
    );
    final maxWidth = MediaQuery.of(context).size.width * 0.7;

    final bubble = Container(
      constraints: BoxConstraints(maxWidth: maxWidth),
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      decoration: BoxDecoration(color: bubbleColor, borderRadius: borderRadius),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            message.text,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 15,
              height: 1.4,
            ),
          ),
          if (message.subtitle != null) ...[
            const SizedBox(height: 6),
            Text(
              message.subtitle!,
              style: const TextStyle(color: Color(0xFFCCD4DE), fontSize: 13),
            ),
          ],
          if (message.attachmentImage != null) ...[
            const SizedBox(height: 10),
            ClipRRect(
              borderRadius: BorderRadius.circular(16),
              child: Image.network(message.attachmentImage!, fit: BoxFit.cover),
            ),
          ],
        ],
      ),
    );

    if (isMe) {
      return Padding(
        padding: const EdgeInsets.symmetric(vertical: 4),
        child: Align(alignment: Alignment.centerRight, child: bubble),
      );
    }

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          showAvatar
              ? CircleAvatar(
                  radius: 18,
                  backgroundImage: NetworkImage(message.sender.avatarUrl),
                )
              : const SizedBox(width: 36),
          const SizedBox(width: 8),
          Flexible(child: bubble),
          const SizedBox(width: 32),
        ],
      ),
    );
  }
}

class _StatusMessage extends StatelessWidget {
  const _StatusMessage({required this.message, required this.showAvatar});

  final DirectMessageModel message;
  final bool showAvatar;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 6),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          showAvatar
              ? CircleAvatar(
                  radius: 18,
                  backgroundImage: NetworkImage(message.sender.avatarUrl),
                )
              : const SizedBox(width: 36),
          const SizedBox(width: 8),
          Expanded(
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
              decoration: BoxDecoration(
                color: const Color(0xFF1F2A37),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    message.text,
                    style: const TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  if (message.subtitle != null) ...[
                    const SizedBox(height: 4),
                    Text(
                      message.subtitle!,
                      style: const TextStyle(
                        color: Color(0xFF94A2B3),
                        fontSize: 13,
                      ),
                    ),
                  ],
                ],
              ),
            ),
          ),
          const SizedBox(width: 16),
        ],
      ),
    );
  }
}

class _TimestampLabel extends StatelessWidget {
  const _TimestampLabel({required this.time});

  final String time;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Center(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
          decoration: BoxDecoration(
            color: const Color(0xFF18232F),
            borderRadius: BorderRadius.circular(12),
          ),
          child: Text(
            time,
            style: const TextStyle(
              color: Color(0xFF9DA7B5),
              fontSize: 12,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
      ),
    );
  }
}

class _ProfileOverview extends StatelessWidget {
  const _ProfileOverview({required this.user});

  final UserModel user;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 12),
        CircleAvatar(radius: 44, backgroundImage: NetworkImage(user.avatarUrl)),
        const SizedBox(height: 16),
        Text(
          user.displayName ?? user.username,
          style: const TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        ),
        const SizedBox(height: 6),
        Text(
          '${user.followerCount} followers · ${user.postCount} post',
          style: const TextStyle(color: Color(0xFF94A2B3)),
        ),
        if (user.mutualInfo != null) ...[
          const SizedBox(height: 6),
          Text(
            user.mutualInfo!,
            style: const TextStyle(color: Color(0xFF94A2B3), fontSize: 13),
            textAlign: TextAlign.center,
          ),
        ],
        const SizedBox(height: 16),
        SizedBox(
          width: 140,
          child: OutlinedButton(
            onPressed: () {},
            style: OutlinedButton.styleFrom(
              side: const BorderSide(color: Color(0xFF37424F)),
              foregroundColor: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(14),
              ),
              padding: const EdgeInsets.symmetric(vertical: 10),
            ),
            child: const Text('View profile'),
          ),
        ),
        const SizedBox(height: 20),
        Container(height: 1, color: const Color(0xFF1C2A36)),
      ],
    );
  }
}

class _EmptyStatePrompt extends StatelessWidget {
  const _EmptyStatePrompt({required this.username});

  final String username;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'You haven\'t chatted with $username yet',
          style: const TextStyle(
            color: Colors.white,
            fontSize: 16,
            fontWeight: FontWeight.w600,
          ),
        ),
        const SizedBox(height: 8),
        const Text(
          'Send a message to start the conversation.',
          style: TextStyle(color: Color(0xFF7C8A99)),
        ),
      ],
    );
  }
}

class _MessageInputField extends StatelessWidget {
  const _MessageInputField();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.fromLTRB(12, 4, 12, 12),
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 8),
          decoration: BoxDecoration(
            color: const Color(0xFF131F2B),
            borderRadius: BorderRadius.circular(28),
          ),
          child: Row(
            children: [
              Container(
                width: 36,
                height: 36,
                decoration: const BoxDecoration(
                  color: Color(0xFF8A3FFC),
                  shape: BoxShape.circle,
                ),
                child: const Icon(
                  Icons.camera_alt,
                  size: 18,
                  color: Colors.white,
                ),
              ),
              const SizedBox(width: 12),
              Expanded(
                child: TextField(
                  style: const TextStyle(color: Colors.white),
                  decoration: const InputDecoration(
                    isDense: true,
                    hintText: 'Message...',
                    hintStyle: TextStyle(color: Color(0xFF7C8A99)),
                    border: InputBorder.none,
                  ),
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.mic_none_outlined, color: Colors.white),
              ),
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.image_outlined, color: Colors.white),
              ),
              IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.emoji_emotions_outlined,
                  color: Colors.white,
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.add_circle_outline, color: Colors.white),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

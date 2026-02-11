import 'package:flutter/material.dart';
import 'package:instagramapp/model/user_model.dart';

class StoryAvatar extends StatelessWidget {
  const StoryAvatar({super.key, required this.story});

  final StoryModel story;

  @override
  Widget build(BuildContext context) {
    final double size = 70;
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Stack(
          children: [
            Container(
              width: size,
              height: size,
              padding: const EdgeInsets.all(2.5),
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                gradient: LinearGradient(
                  colors: [
                    Color(0xFFFD1D1D),
                    Color(0xFFF56040),
                    Color(0xFFFCAF45),
                    Color(0xFFDD2A7B),
                  ],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
              ),
              child: Container(
                padding: const EdgeInsets.all(2.5),
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: Color(0xFF0B1823),
                ),
                child: ClipOval(
                  child: Image.network(
                    story.user.avatarUrl,
                    width: size,
                    height: size,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            if (story.isAddStory)
              Positioned(
                right: 2,
                bottom: 2,
                child: Container(
                  width: 22,
                  height: 22,
                  decoration: BoxDecoration(
                    color: const Color(0xFF0A7CFF),
                    shape: BoxShape.circle,
                    border: Border.all(
                      color: const Color(0xFF0B1823),
                      width: 2,
                    ),
                  ),
                  child: const Icon(Icons.add, size: 14, color: Colors.white),
                ),
              ),
          ],
        ),
        const SizedBox(height: 8),
        SizedBox(
          width: 76,
          child: Text(
            story.isAddStory ? 'Your story' : story.user.username,
            style: const TextStyle(fontSize: 12, color: Colors.white),
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.center,
          ),
        ),
      ],
    );
  }
}

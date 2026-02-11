import 'package:flutter/material.dart';
import 'package:instagramapp/data/mock_data.dart';
import 'package:instagramapp/widgets/post_card.dart';
import 'package:instagramapp/widgets/story_avatar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF0B1823),
      body: SafeArea(
        child: ListView.builder(
          itemCount: postData.length + 2,
          itemBuilder: (context, index) {
            if (index == 0) {
              return const _HomeTopBar();
            }

            if (index == 1) {
              return const _StorySection();
            }

            final post = postData[index - 2];
            return PostCard(post: post);
          },
        ),
      ),
    );
  }
}

class _HomeTopBar extends StatelessWidget {
  const _HomeTopBar();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
      child: Row(
        children: [
          const Icon(Icons.add_box_outlined, color: Colors.white, size: 28),
          const Spacer(),
          const Text(
            'Instagram',
            style: TextStyle(
              color: Colors.white,
              fontSize: 26,
              fontWeight: FontWeight.w600,
              letterSpacing: 0.3,
            ),
          ),
          const SizedBox(width: 4),
          const Icon(Icons.keyboard_arrow_down, color: Colors.white),
          const Spacer(),
          const Icon(Icons.favorite_border, color: Colors.white, size: 26),
        ],
      ),
    );
  }
}

class _StorySection extends StatelessWidget {
  const _StorySection();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 6, bottom: 12),
      child: SizedBox(
        height: 110,
        child: ListView.separated(
          padding: const EdgeInsets.symmetric(horizontal: 12),
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            final story = storyData[index];
            return StoryAvatar(story: story);
          },
          separatorBuilder: (_, __) => const SizedBox(width: 14),
          itemCount: storyData.length,
        ),
      ),
    );
  }
}

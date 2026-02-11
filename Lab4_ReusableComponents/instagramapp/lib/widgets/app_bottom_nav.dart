import 'package:flutter/material.dart';

class AppBottomNav extends StatelessWidget {
  const AppBottomNav({super.key, this.currentIndex = 0, this.onTap});

  final int currentIndex;
  final ValueChanged<int>? onTap;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: false,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 10),
        decoration: const BoxDecoration(
          color: Color(0xFF0B1823),
          border: Border(top: BorderSide(color: Color(0xFF1C2A36), width: 0.8)),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            _NavIcon(
              icon: Icons.home_filled,
              isActive: currentIndex == 0,
              onTap: () => onTap?.call(0),
            ),
            _NavIcon(
              icon: Icons.play_circle_outline,
              isActive: currentIndex == 1,
              onTap: () => onTap?.call(1),
            ),
            _NavIcon(
              icon: Icons.send_outlined,
              isActive: currentIndex == 2,
              onTap: () => onTap?.call(2),
              showDot: true,
            ),
            _NavIcon(
              icon: Icons.search,
              isActive: currentIndex == 3,
              onTap: () => onTap?.call(3),
            ),
            _ProfileIcon(
              isActive: currentIndex == 4,
              onTap: () => onTap?.call(4),
            ),
          ],
        ),
      ),
    );
  }
}

class _NavIcon extends StatelessWidget {
  const _NavIcon({
    required this.icon,
    required this.isActive,
    required this.onTap,
    this.showDot = false,
  });

  final IconData icon;
  final bool isActive;
  final VoidCallback onTap;
  final bool showDot;

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        IconButton(
          onPressed: onTap,
          icon: Icon(
            icon,
            size: 28,
            color: isActive ? Colors.white : const Color(0xFFB7C1CC),
          ),
        ),
        if (showDot)
          const Positioned(right: 8, top: 6, child: _NotificationDot()),
      ],
    );
  }
}

class _ProfileIcon extends StatelessWidget {
  const _ProfileIcon({required this.isActive, required this.onTap});

  final bool isActive;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 30,
        height: 30,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: const Color(0xFF2A3A48),
          border: Border.all(
            color: isActive ? Colors.white : const Color(0xFF2A3A48),
            width: 2,
          ),
        ),
        child: const Icon(Icons.person, color: Colors.white, size: 18),
      ),
    );
  }
}

class _NotificationDot extends StatelessWidget {
  const _NotificationDot();

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 8,
      height: 8,
      decoration: const BoxDecoration(
        color: Color(0xFFFF3B30),
        shape: BoxShape.circle,
      ),
    );
  }
}

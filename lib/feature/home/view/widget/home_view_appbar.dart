part of '../home_view.dart';

class _HomeViewAppbar extends StatelessWidget implements PreferredSizeWidget {
  const _HomeViewAppbar();

  @override
  Widget build(BuildContext context) {
    return AppBar();
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}

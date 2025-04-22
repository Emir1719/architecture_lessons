part of '../home_view.dart';

class _HomeViewAppbar extends StatelessWidget implements PreferredSizeWidget {
  const _HomeViewAppbar();

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: const Text(
        LocaleKeys.home_title,
      ).tr(context: context, args: ["Metin"]),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}

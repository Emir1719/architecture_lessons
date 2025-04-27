enum PreferenceKey {
  isFirstLaunch('is_first_launch'),
  authToken('auth_token'),
  darkModeEnabled('dark_mode_enabled'),
  launchCount('launch_count'),
  userScore('user_score'),
  favoriteItems('favorite_items');

  final String value;
  const PreferenceKey(this.value);
}

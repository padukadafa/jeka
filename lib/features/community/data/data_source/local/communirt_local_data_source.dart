abstract class CommunityLocalDataSource {
  Future<List<String>> getRecentSearch(int limit);
  Future<void> addRecentSearch(String query);
}

enum HomeViewStatus {
  general,
  search;

  static HomeViewStatus newStatus(bool search) {
    if (search) {
      return HomeViewStatus.search;
    }
    return HomeViewStatus.general;
  }

  bool get isGeneral => this == HomeViewStatus.general;
}

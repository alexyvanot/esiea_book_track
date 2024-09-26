mixin History {

  String getFormattedTime() => DateTime.now().toIso8601String().substring(11, 19);
  final List<String> _history = [];

  void log(String action) {
    _history.add(action);
    // print('[${getFormattedTime()}] Action enregistrée : $action');
  }

  void showHistory() {
    if (_history.isEmpty) {
      print('[${getFormattedTime()}] No actions logged yet');
    } else {
      print('[${getFormattedTime()}] Actions logs:');
      for (var action in _history) {
        print("- " + action);
      }
    }
  }
}


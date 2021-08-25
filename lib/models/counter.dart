class Counter {
  String title;

  Counter({required this.title});

  factory Counter.fromJson(Map<String, Object> data) {
    final title = data['title'] as String;
    return Counter(title: title);
  }
}

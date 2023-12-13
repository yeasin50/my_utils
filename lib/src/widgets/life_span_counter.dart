part of my_utils;

/// A callback that receives the time spent.
typedef LifeSpanCallback = void Function(Duration lifeSpan);

/// A widget that count the time spent [child].
/// It is useful to know how much time a widget is on the screen.
/// can be used on [PageView] to know how much time a page is on the screen.
/// or on any/[TabBarView] to know how much time a tab is on the screen.
///
/// ```dart
/// LifeSpanCounter(
///  lifeSpan: (lifeSpan) {
///   print(lifeSpan);
/// },
/// child: Text('Hello World'),
/// )
class LifeSpanCounter extends StatefulWidget {
  /// creates a widget that count the time spent [child].
  const LifeSpanCounter({
    super.key,
    required this.lifeSpan,
    required this.child,
  });

  final LifeSpanCallback lifeSpan;

  /// the widget to be wrapped and count the time spent.
  final Widget child;

  @override
  State<LifeSpanCounter> createState() => _LifeSpanCounterState();
}

class _LifeSpanCounterState extends State<LifeSpanCounter> {
  late DateTime initTime;

  @override
  void initState() {
    initTime = DateTime.now();
    super.initState();
  }

  @override
  void dispose() {
    widget.lifeSpan(DateTime.now().difference(initTime));
    super.dispose();
  }

  @override
  Widget build(BuildContext context) => widget.child;
}

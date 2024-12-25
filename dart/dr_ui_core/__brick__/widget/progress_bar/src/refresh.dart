import 'package:flutter/material.dart';

class {{name.pascalCase()}}RefreshIndicator extends StatelessWidget {
  const {{name.pascalCase()}}RefreshIndicator({super.key, this.onRefresh, required this.child});

  final Function()? onRefresh;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return RefreshIndicator(
      notificationPredicate: (_) {
        
        return true;
      },
      strokeWidth: 1.2,
      color: Theme.of(context).colorScheme.onSurface,
      backgroundColor: Theme.of(context).colorScheme.surface,
      displacement: 32,
      onRefresh: () async {
        await onRefresh?.call();
      },
      child: child,
    );
  }
}
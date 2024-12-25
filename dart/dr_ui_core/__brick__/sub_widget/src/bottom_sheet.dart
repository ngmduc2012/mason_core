import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:ui_core/src.dart';

extension {{name.pascalCase()}}BottomSheetHelper  on BuildContext{

  Future<T?> bottomSheet<T>({
    Widget? child,
    List<Widget>? children,
    double? initialChildSize,
    double? maxChildSize,
    double? minChildSize,
    bool animationOn = true,
  }) {
    return showModalBottomSheet<T>(
      barrierColor: Theme.of(this).colorScheme.onBackground.withOpacity(0.05),
      context: this,
      clipBehavior: Clip.none,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(50),
          topLeft: Radius.circular(50),
        ),
      ),
      constraints: const BoxConstraints(
        maxWidth:  double.infinity,
      ),
      isScrollControlled: true,
      // backgroundColor: Theme.of(context).colorScheme.theme,
      backgroundColor: Theme.of(this).colorScheme.background,
      // backgroundColor: Colors.black12,
      // useSafeArea: true,
      builder: (BuildContext context) =>
          {{name.pascalCase()}}BottomSheetFitter(
            children: children ?? [],
            animationOn: animationOn,
            initialChildSize: initialChildSize,
            maxChildSize: maxChildSize,
            minChildSize: minChildSize,
            child: child,
          ),
      // Container(width: double.infinity, color: Colors.amber,)
    );
  }
}

class {{name.pascalCase()}}BottomSheetFitter extends StatefulWidget {
  final Widget? child;
  final double? initialChildSize;
  final double? maxChildSize;
  final double? minChildSize;
  final bool animationOn;
  final List<Widget> children;

  const {{name.pascalCase()}}BottomSheetFitter(
      {super.key,
        this.initialChildSize,
        this.maxChildSize,
        this.minChildSize,
        this.child,
        this.animationOn = true,
        this.children = const [],
      });

  @override
  State<StatefulWidget> createState() => _MyBottomSheetFitter();
}

class _MyBottomSheetFitter extends State<{{name.pascalCase()}}BottomSheetFitter> {
  bool isScroll = false;

  @override
  Widget build(BuildContext context) {
    return MyGestureContainer(
      // color: MyColors.theme,
      onTap: (){
        FocusScope.of(context).requestFocus(FocusNode());
      },
      padding: EdgeInsets.only(
        bottom: MediaQuery.of(context).viewInsets.bottom,
      ),
      child: Stack(
        clipBehavior: Clip.none,
        fit: StackFit.passthrough,
        children: [
          NotificationListener<ScrollNotification>(
            onNotification: (scrollNotification) {
              final isScrollHorizontal = scrollNotification.metrics.axisDirection == AxisDirection.right
                  || scrollNotification.metrics.axisDirection == AxisDirection.left;

              if (scrollNotification is ScrollStartNotification &&
                  widget.animationOn &&
                  !isScrollHorizontal) {
                WidgetsBinding.instance.addPostFrameCallback((_) {
                  if (mounted) {
                    setState(() {
                      isScroll = true;
                    });
                  }
                });
              } else if (scrollNotification is ScrollEndNotification &&
                  widget.animationOn &&
                  !isScrollHorizontal) {
                WidgetsBinding.instance.addPostFrameCallback((_) {
                  if (mounted) {
                    setState(() {
                      isScroll = false;
                    });
                  }
                });
              }
              return true;
            },
            child: DraggableScrollableSheet(
              initialChildSize: widget.initialChildSize ?? 0.5,
              maxChildSize: widget.maxChildSize ?? 1,
              minChildSize: widget.minChildSize ?? 0.25,
              expand: false,
              builder: (BuildContext context, ScrollController scrollController) {
                return MySingleChildScrollView(
                  padding: EdgeInsets.zero,
                  controller: scrollController,
                  child: Column(
                    children: [
                      MyHeaderBottomSheet(isScroll: isScroll),
                      const Gap(15),
                      if (widget.child != null) widget.child!,
                    ],
                  ),
                );
              },
            ),
          ),
          if (widget.children.isNotEmpty) ...widget.children
            // for (final e in widget.children) e,
        ],
      ),
    );
  }
}

class MyHeaderBottomSheet extends StatelessWidget {
  const MyHeaderBottomSheet({
    super.key,
    required this.isScroll,
  });

  final bool isScroll;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 200),
      margin: const EdgeInsets.symmetric(vertical: 10),
      decoration: BoxDecoration(
        // color: Theme.of(context).colorScheme.onBackground.withOpacity({{name.pascalCase()}}Artist.isBrightnessLight ? 0.1 : 0.3),
        borderRadius: BorderRadius.circular(50),
      ),
      width: isScroll ? 4 : 50,
      height: isScroll ? 4 : 5,
    );
  }
}

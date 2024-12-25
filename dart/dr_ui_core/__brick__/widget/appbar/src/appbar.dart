// ignore_for_file: depend_on_referenced_packages

import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class {{name.pascalCase()}}AppBar extends StatefulWidget implements PreferredSizeWidget {
  final Widget? title;
  final AppBar? appBar;
  final List<Widget>? actions;
  final Color? backgroundColor;
  final double? elevation;
  final double padding;
  final bool automaticallyImplyLeading; // tự động lấp đầy leading khi nó rỗng.
  final Widget? leading;
  final bool? centerTitle;
  final double? leadingWidth;
  final PreferredSizeWidget? bottom;
  final double? toolbarHeight;
  final Function()? onCallback;

  const {{name.pascalCase()}}AppBar({
    super.key,
    this.title,
    this.appBar,
    this.actions,
    this.backgroundColor ,
    this.elevation = 0.0,
    this.padding = 0.0,
    this.automaticallyImplyLeading = false,
    this.leading,
    this.centerTitle = true,
    this.leadingWidth,
    this.bottom,
    this.toolbarHeight,
    this.onCallback,
  });

  @override
  {{name.pascalCase()}}AppBarState createState() => {{name.pascalCase()}}AppBarState();

  @override
  Size get preferredSize =>
      Size.fromHeight((appBar ?? AppBar(
        toolbarHeight: toolbarHeight,
      )).preferredSize.height);
}

class {{name.pascalCase()}}AppBarState extends State<{{name.pascalCase()}}AppBar> {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      clipBehavior: Clip.hardEdge,
      toolbarHeight: widget.toolbarHeight,
      leadingWidth: widget.leadingWidth,
      centerTitle: widget.centerTitle,
      automaticallyImplyLeading: widget.automaticallyImplyLeading,
      backgroundColor: widget.backgroundColor ?? Theme.of(context).colorScheme.background,
      foregroundColor: widget.backgroundColor ?? Theme.of(context).colorScheme.background,
      surfaceTintColor: widget.backgroundColor ?? Theme.of(context).colorScheme.background,
      elevation: widget.elevation,
      leading:  Container(
        padding: EdgeInsets.only(left: widget.padding),
        child: widget.leading,
      ),
      title: widget.title,
      bottom: widget.bottom,
      actions: [...?widget.actions, Gap(widget.padding)],
    );
  }
}

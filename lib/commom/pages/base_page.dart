import 'package:flutter/material.dart';
import 'package:hrm/utils/constants/spacing_constants.dart';

class BasePage extends StatelessWidget {
  final PreferredSizeWidget? appBar;
  final Widget? body;
  final Color? backgroundColor;
  final EdgeInsetsGeometry? padding;
  final Widget? drawer;
  final Widget? bottomNavigationBar;
  final Future<void> Function() onRefresh;
  final bool? resizeToAvoidBottomInse;
  const BasePage({
    super.key,
    this.appBar,
    this.body,
    this.backgroundColor = Colors.white,
    this.padding,
    this.drawer,
    this.bottomNavigationBar,
    required this.onRefresh,
    this.resizeToAvoidBottomInse,
  });

  @override
  Widget build(BuildContext context) {
    return PopScope(
      onPopInvokedWithResult: (didPop, result) {},
      child: Scaffold(
        resizeToAvoidBottomInset: resizeToAvoidBottomInse,
        key: key,
        drawer: drawer,
        backgroundColor: backgroundColor,
        appBar: appBar,
        body: RefreshIndicator(
          onRefresh: onRefresh,
          triggerMode: RefreshIndicatorTriggerMode.anywhere,
          child: Padding(
            padding: padding ??
                EdgeInsets.all(
                  SpacingConstants.defaultPaddingPage,
                ),
            child: body,
          ),
        ),
        bottomNavigationBar: bottomNavigationBar,
      ),
    );
  }
}

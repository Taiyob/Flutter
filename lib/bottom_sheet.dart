import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,
        body: MyDraggableSheet(),
      ),
    );
  }
}

class MyDraggableSheet extends StatelessWidget {
  const MyDraggableSheet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DraggableScrollableSheet(
      initialChildSize: 0.5,
      minChildSize: 0.05,
      maxChildSize: 0.95,
      builder: (BuildContext context, ScrollController scrollController) {
        return Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(22),
              topRight: Radius.circular(22),
            ),
          ),
          child: CustomScrollView(
            controller: scrollController,
            slivers: [
              const TopButtonIndicator(),
              const SliverToBoxAdapter(
                child: BottomSheetContent(),
              ),
            ],
          ),
        );
      },
    );
  }
}

class TopButtonIndicator extends StatelessWidget {
  const TopButtonIndicator({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 10),
        child: Center(
          child: Container(
            width: 100,
            height: 5,
            decoration: BoxDecoration(
              color: Colors.black45,
              borderRadius: BorderRadius.circular(8.0),
            ),
          ),
        ),
      ),
    );
  }
}

class BottomSheetContent extends StatelessWidget {
  const BottomSheetContent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: List.generate(
        7,
            (index) => BottomSheetDummyUI(),
      ),
    );
  }
}

class BottomSheetDummyUI extends StatelessWidget {
  const BottomSheetDummyUI({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        children: [
          Row(
            children: [
              Container(
                color: Colors.black12,
                height: 100,
                width: 100,
              ),
              const SizedBox(width: 10),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    color: Colors.black12,
                    height: 20,
                    width: 200,
                  ),
                  const SizedBox(height: 5),
                  Container(
                    color: Colors.black12,
                    height: 20,
                    width: 180,
                  ),
                  const SizedBox(height: 50),
                ],
              )
            ],
          ),
          const SizedBox(height: 10),
        ],
      ),
    );
  }
}

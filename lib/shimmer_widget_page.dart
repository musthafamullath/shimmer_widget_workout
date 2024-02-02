import 'package:flutter/material.dart';
import 'package:shimmer_widget_workout/shimmer_list_page.dart';

class ShimmerLodingPage extends StatelessWidget {
  const ShimmerLodingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Shimmer Loding......"),
      ),
      body: FutureBuilder(
        future: fetchData(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const ShimmerListPage();
          }
          if(snapshot.hasError){
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
          if(snapshot.hasData){
            return ListView.builder(itemBuilder: (context, index) {
              final data = snapshot.data;
              return ListTile(
                title: Text(data![index]),
              );
            },
            itemCount: snapshot.data!.length,
            );
          }
          return const Center(
            child: Text("Something Error"),
          );
        },
        
      ),
    );
  }

  Future<List<String>> fetchData() async {
    await Future.delayed(const Duration(seconds: 5));
    return ["item1", "item2", "item3"];
  }
}

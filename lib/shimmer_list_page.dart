import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class ShimmerListPage extends StatelessWidget {
  const ShimmerListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: Colors.grey.shade300,
      highlightColor: Colors.grey[100]!,
      child:  ListView.builder(itemBuilder: (context, index) {
        return  ListTile(
          leading:const CircleAvatar(),
          title: Container(width: double.infinity,height: 20,color: Colors.amber,),
          subtitle:Container(width: double.infinity,height: 20,color: Colors.amber,),
        );
        
      },
      itemCount: 10,
      ),
    );
  }
}

import 'package:flutter/material.dart';

class CustomListCellSkeletonWidget extends StatelessWidget {

  const CustomListCellSkeletonWidget({Key? key, }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return ListView.separated(
         padding: EdgeInsets.symmetric(horizontal:size.width*0.04,vertical: size.width*0.06),
    separatorBuilder: (context,index) => SizedBox(height: size.width*0.04,),
    itemCount: 5,
      itemBuilder: (context, index) => ListTile(
        tileColor: Colors.grey[100],
        title:  Container(
          decoration: BoxDecoration(
              color: Colors.grey[300],
            borderRadius: BorderRadius.circular(size.width*0.04)
          ),
          width: size.width*0.6,height: size.width*0.04,),
        leading: Container(
          color: Colors.grey[300],
          height: size.width*0.035,
          width: size.width*0.035,
        ),
        trailing: const IconButton(
          icon: Icon(Icons.delete_outline,color: Colors.grey,),
          onPressed: null,
        ),
      ),
    );
  }
}

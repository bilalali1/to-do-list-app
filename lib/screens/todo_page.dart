import 'package:flutter/material.dart';
import 'package:to_do_list_app/customWidgets/custom_appbar_widget.dart';

import '../customWidgets/custom_empty_screen_widget.dart';
import '../customWidgets/custom_list_cell_skeleton_widget.dart';


class TodoPage extends StatelessWidget {
  const TodoPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: CustomAppBarWidget(
        title: 'TODOS',
      ),
      body:
      //CustomListCellSkeletonWidget(),
      // EmptyScreen(),


      ListView.separated(
        padding: EdgeInsets.symmetric(horizontal:size.width*0.04,vertical: size.width*0.06),
        itemCount: 20,
        separatorBuilder: (context,index) => SizedBox(height: size.width*0.04,),
        itemBuilder: (context,index) =>

            ListTile(
              tileColor: Colors.grey[200],
              title: const Text('This is first todo'),
              leading: Checkbox(
                value: true,
                checkColor: Colors.green,
                fillColor:MaterialStateProperty.resolveWith<Color>(
                      (_) {
                    return Colors.white; // Fill color when checkbox is unchecked
                  },
                ),
                onChanged: (change){
                },
              ),
              trailing: IconButton(
                icon: const Icon(Icons.delete_outline,color: Colors.black,),
                onPressed: (){},
              ),
            ),

      ),
    );
  }
}
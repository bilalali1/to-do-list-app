import 'package:flutter/material.dart';


class EmptyScreen extends StatelessWidget {
  final String text;
  const EmptyScreen({Key? key, this.text = 'There are no items here!'}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
          width: double.infinity,
          margin: EdgeInsets.only(bottom: kToolbarHeight + MediaQuery.of(context).padding.top),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                width: size.width * 0.6,
                height: size.width * 0.2,
                child: const Icon(Icons.inbox_outlined,color: Colors.black,),
              ),
              Text(
                text,
                style: TextStyle(fontSize: size.width * 0.042,color: Colors.grey),
              )
            ],
          ),
        ),

    );
  }
}

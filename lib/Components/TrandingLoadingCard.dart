import 'package:flutter/material.dart';
import 'package:news_app/Components/LoadingContainer.dart';

class Trandingloadingcard extends StatelessWidget {
  const Trandingloadingcard({super.key});

  @override
  Widget build(BuildContext context) {
    return  Container(
      margin: EdgeInsets.only(right: 10),
      padding: EdgeInsets.all(10),
      // height: 300,
      width: 280,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Theme.of(context).colorScheme.primaryContainer,
      ),
      child: Column(
        children: [
          Loadingcontainer(
            width: MediaQuery.of(context).size.width,
            height: 200,
          ),
          SizedBox(height: 10,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Loadingcontainer(
                width: MediaQuery.of(context).size.width / 3,
                height: 10,
              ),
              Loadingcontainer(
                width: MediaQuery.of(context).size.width / 5,
                height: 10,
              ),
            ],
          ),
          SizedBox(height: 5,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Loadingcontainer(
                width: MediaQuery.of(context).size.width / 1.6,
                height: 20,
              ),
            ],
          ),
          SizedBox(height: 10,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Loadingcontainer(
                width: MediaQuery.of(context).size.width / 2 -0.2,
                height: 20,
              ),
            ],
          ),
          SizedBox(height: 10,),
          Row(
            children: [
              SizedBox(width: 10,),
              Loadingcontainer(
                width: 30,
                height: 30,
              ),
              SizedBox(width: 10,),
              Loadingcontainer(
                width: MediaQuery.of(context).size.width / 2 -0.2,
                height: 20,
              ),
            ],
          ),
          SizedBox(width: 10,),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:news_app/Components/LoadingContainer.dart';

class Newstileloading extends StatelessWidget {
  const Newstileloading({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 15),
      padding:  EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.primaryContainer,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        children: [
          Loadingcontainer(
              width: 120,
              height: 120
          ),

          SizedBox(width: 10,),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    SizedBox(width: 10,),
                    Loadingcontainer(
                      width: 30,
                      height: 30,
                    ),
                    SizedBox(width: 10,),
                    Loadingcontainer(
                      width: MediaQuery.of(context).size.width /3,
                      height: 20,
                    ),
                  ],
                ),
                SizedBox(height: 10,),
                Loadingcontainer(
                  width: MediaQuery.of(context).size.width /1.6,
                  height: 15,
                ),
                SizedBox(height: 15,),
                Loadingcontainer(
                  width: MediaQuery.of(context).size.width /1.8,
                  height: 15,
                ),
                SizedBox(height: 15,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(width: 10,),
                    Loadingcontainer(
                      width: MediaQuery.of(context).size.width /5,
                      height: 15,
                    ),
                    SizedBox(width: 10,),
                    Loadingcontainer(
                      width: MediaQuery.of(context).size.width /5,
                      height: 15,
                    ),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

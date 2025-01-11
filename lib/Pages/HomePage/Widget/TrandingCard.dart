import 'package:flutter/material.dart';

class Trandingcard extends StatelessWidget {
  final String imageUrl ;
  final String tag;
  final String time;
  final String author;
  final String title;
  final VoidCallback ontap;
  final String logo;
  const Trandingcard({super.key,
  required this.imageUrl,
    required this.author,
    required this.tag,
    required this.time,
    required this.title,
    required this.ontap,
    required this.logo,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: ontap,
      child: Container(
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
            Container(
              // height: 200,
              // width: 270,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Theme.of(context).colorScheme.surface,
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.network(
                  imageUrl
                 ),
              ),
            ),
            SizedBox(height: 10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("$tag",style: Theme.of(context).textTheme.labelSmall,),
                Text('$time',style: Theme.of(context).textTheme.labelSmall,)
              ],
            ),
            SizedBox(height: 5,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Flexible(
                  child: Text(
                    '$title',
                    style: TextStyle(
                        fontSize: 20
                    ),
                    maxLines: 2,
                  ),
                ),
              ],
            ),
            SizedBox(height: 10,),
            Row(
              children: [
                SizedBox(width: 10,),
                CircleAvatar(
                  radius: 15,
                  backgroundColor: Theme.of(context).colorScheme.primary,
                  child: Text('$logo'),
                ),
                SizedBox(width: 10,),
                Expanded(child: Text('$author'))
              ],
            ),
            SizedBox(width: 10,),
          ],
        ),
      ),
    );
  }
}

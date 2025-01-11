import 'package:flutter/material.dart';

class  NewsTile extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String time;
  final String author;
  final String logo;
  final VoidCallback ontap;
  const  NewsTile({super.key,
    required this.imageUrl,
    required this.title,
    required this.time,   
    required this.author,
    required this.logo,
    required this.ontap
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: ontap,
      child: Container(
        margin: EdgeInsets.only(bottom: 15),
        padding:  EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.primaryContainer,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Row(
          children: [
            Container(
              width: 120,
              height: 120,
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.primaryContainer,
                borderRadius: BorderRadius.circular(20),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.network(
                    imageUrl,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(width: 10,),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(width: 10,),
                      CircleAvatar(
                        radius: 15,
                        backgroundColor: Theme.of(context).colorScheme.primary,
                        child: Text('$logo'),
                      ),
                      SizedBox(width: 10,),
                      Expanded(child: Text("$author")),
                    ],
                  ),
                  SizedBox(height: 10,),
                  Text(
                  '$title',
                    maxLines: 2,),
                  SizedBox(height: 15,),
                  Text('$time',
                    style: Theme.of(context).textTheme.labelSmall,)
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

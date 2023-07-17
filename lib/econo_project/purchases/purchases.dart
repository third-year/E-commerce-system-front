import 'package:flutter/material.dart';
import 'package:shopping/ui/style/colors.dart';
class PurchasesScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return  SingleChildScrollView(
      physics: BouncingScrollPhysics(),
      child: ListView.separated(
        itemBuilder: (context, index) => buildfavitem(),
        separatorBuilder: (context, index) => Divider(
          height: 1.0,
          thickness: 2.0,
        ),
        itemCount: 10,
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
      ),
    );
  }

  Widget buildfavitem() => Padding(
      padding: const EdgeInsets.all(20.0),
      child: GestureDetector(
        child: Row(
          children: [
            Image(
              image: NetworkImage(
                  'https://cdn.webshopapp.com/shops/256009/files/374439516/xiaomi-xiaomi-mi-tv-p1-55-inch.jpg'),
              width: 120.0,
              height: 120.0,
            ),
            SizedBox(
              width: 20.0,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'TV smart',
                  style: TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 20.0,
                ),
                Text(
                  '5000',
                  style: TextStyle(color: ColorApp.strongColor, fontSize: 17.0),
                )
              ],
            ),
            Spacer(),
            Icon(
              Icons.favorite,
              size: 35.0,
            )
          ],
        ),
      ));
}
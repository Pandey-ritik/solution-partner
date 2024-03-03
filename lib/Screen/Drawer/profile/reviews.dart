import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:get/get.dart';
import 'package:solution_parnter/Content/color.dart';
import 'package:solution_parnter/Content/image.dart';
import 'package:zego_uikit_prebuilt_call/zego_uikit_prebuilt_call.dart';

class Reviews extends StatefulWidget {
  const Reviews({super.key});

  @override
  State<Reviews> createState() => _ReviewsState();
}

class _ReviewsState extends State<Reviews> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Reviews'),

      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            RatingReviews(
              ratings: '4.5',
            ),
            SizedBox(height: 10,),
            container('Rahul', '${image.postImage3}', '3 ', 'Review content, or product review content, is content that attempts to provide information on how a product works, looks, and/or feels. Review content is especially useful for online shoppers who can\'t physically vet a product in person before purchasing it.'),
            SizedBox(height: 20,),
            container('Sanjay', '${image.postImage2}', '7 ', 'Review content, or product review content, is content that attempts to provide information on how a product works, looks, and/or feels. Review content is especially useful for online shoppers who can\'t physically vet a product in person before purchasing it.'),
            SizedBox(height: 20,)
          ],
        ),
      ),
    );
  }
  Widget container(String name,image,days,detail){
    return Container(
      child: Column(
        children: [
          ListTile(
            leading: Container(height: 50,width: 50,child: Image.asset(image,fit: BoxFit.cover,),),
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(name),
                Text('$days Days ago')
              ],
            ),
            subtitle: Row(
              children: [
                Icon(Icons.star,color: Colors.yellow,size: 20),
                Icon(Icons.star,color: Colors.yellow,size: 20),
                Icon(Icons.star,color: Colors.yellow,size: 20),
                Icon(Icons.star,color: Colors.yellow,size: 20),
                Icon(Icons.star_border,color: Colors.grey,size: 20),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15,right: 10),
            child: Text('${detail}'),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20,right: 10),
            child: Container(
              child: Row(

                children: [
                  SizedBox(

                    width:Get.width*0.65,
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: 'Reply'
                      ),
                    ),
                  ),
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(backgroundColor: appcolor.blueColor),
                      onPressed: (){}, child: Text('Send',style: TextStyle(color: Colors.white),))
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

class ratingbars extends StatelessWidget {
  ratingbars(
      {super.key,
        required this.rating_num,
        required this.width1,
        required this.width2});
  String rating_num;
  double width1;
  double width2;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20,right: 20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            children: [
              SizedBox(
                width: Get.width* 0.2,
                child: Text(
                  "${rating_num}",
                  style: TextStyle(color: Colors.black, fontSize: 16),
                ),
              ),
              SizedBox(
                width: 10,
              ),
              Container(
                height: 10,
                width: width1,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(15),
                        bottomLeft: Radius.circular(15)),
                    color: Colors.green),
              ),
              Container(
                height: 10,
                width: width2,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(15),
                        bottomRight: Radius.circular(15)),
                    color: Colors.grey.shade400),
              )
            ],
          )
        ],
      ),
    );
  }
}
class RatingReviews extends StatefulWidget {
  RatingReviews({super.key, required this.ratings});
  String ratings = "4.8";

  @override
  State<RatingReviews> createState() => _RatingReviewsState();
}

class _RatingReviewsState extends State<RatingReviews> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          SizedBox(
            width: 5,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Center(
                child: Text(
                  "Overall Rating",
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.w400),
                ),
              ),
              Center(
                child: Text(
                  "${widget.ratings}/5",
                  style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
                ),
              ),

              Container(
                // width: 350,
                child: RatingBar.builder(
                  initialRating: 3,
                  minRating: 1,
                  direction: Axis.horizontal,
                  allowHalfRating: false,
                  itemCount: 5,
                  itemPadding: EdgeInsets.symmetric(horizontal: 1),
                  itemBuilder: (context, _) => Icon(
                    Icons.star,
                    color: Colors.green,
                  ),
                  onRatingUpdate: (rating) {
                    //ratings=rating;
                  },
                ),
              ),
              Text(
                "Based on 148 reviews",
                style: TextStyle(color: Colors.grey.shade700),
              ),
            ],
          ),

          SizedBox(
            height: 30,
          ),
          Column(
            children: [
              ratingbars(rating_num: 'Top', width1: 40, width2:Get.width * 0.4 ,),
              ratingbars(rating_num: 'Excellent', width1: 30, width2:Get.width * 0.4 ),
              ratingbars(rating_num: 'Good', width1: 20, width2:Get.width * 0.4 ),
              ratingbars(rating_num: 'Averagy', width1: 15, width2:Get.width * 0.4 ),
              ratingbars(rating_num: 'Poor', width1: 10, width2:Get.width * 0.4 )
            ],
          )
        ],
      ),
    );
  }
}

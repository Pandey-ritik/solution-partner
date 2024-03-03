import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:solution_parnter/Design/Responsive.dart';

class Second extends StatefulWidget {
  const Second({super.key});

  @override
  State<Second> createState() => _SecondState();
}

class _SecondState extends State<Second> {


  bool _isSwitched = false;

  bool person = false,experience = false, yourCharges = false,
      education = false,expertise = false,
      achievment = false,bank = false;



  @override
  Widget build(BuildContext context) {

    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Color(0xffF5F5F5),
      appBar: AppBar(


      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 10,bottom: 10),
        child: ListView(
          children: [
            InkWell(
              onTap: (){
                setState(() {
                  yourCharges = ! yourCharges;
                });
              },
              child: Container(
                padding: EdgeInsets.only(top: 5,bottom: 5),
                color: Colors.white,
                child: ListTile(
                  leading: Icon(Icons.account_balance_wallet_outlined),
                  title: Text('Your Charges/Fees',style: TextStyle(fontWeight: FontWeight.bold,fontSize: Responsive.issmallscreen(context)? width/26 : width/60,fontFamily: 'main'),),
                  trailing:  Icon(yourCharges ? Icons.arrow_drop_up : Icons.arrow_drop_down),
                ),),
            ),

          if(yourCharges)
            SingleChildScrollView(
              child: Container(
                width: double.infinity,
                color: Colors.white,
                child: Column(
                  children: [
                    Align(
                        alignment: Alignment.centerRight,
                        child: TextButton(onPressed: (){}, child: Text('Edit',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),))),
                    Container(
                      padding: EdgeInsets.only(left: 15,right: 15,bottom: 15),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Few Line Abou you:",style: TextStyle(fontSize: Responsive.issmallscreen(context)? width/27 : width/60,fontWeight: FontWeight.w700),),
                          SizedBox(height: 20,),
                          Text("Designation:",style: TextStyle(fontSize: Responsive.issmallscreen(context)? width/27 : width/60,fontWeight: FontWeight.w700),),
                          SizedBox(height: 20,),
                          Text("Professional summary:",style: TextStyle(fontSize: Responsive.issmallscreen(context)? width/27 : width/60,fontWeight: FontWeight.w700),),
                          SizedBox(height: 20,),
                          Text("Practing Since:",style: TextStyle(fontSize: Responsive.issmallscreen(context)? width/27 : width/60,fontWeight: FontWeight.w700),),
                          SizedBox(height: 20,),
                          Text("Profile URL:",style: TextStyle(fontSize: Responsive.issmallscreen(context)? width/27 : width/60,fontWeight: FontWeight.w700),),
                          SizedBox(height: 20,),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),

            SizedBox(height: 15,),
             InkWell(
               onTap: (){
                 setState(() {
                   person = ! person;
                 });
               },
               child: Container(
                  padding: EdgeInsets.only(top: 5,bottom: 5),
                  color: Colors.white,
                  child: ListTile(
                    leading: Icon(Icons.person),
                    title: Text('Profile Information',style: TextStyle(fontWeight: FontWeight.bold,fontSize: Responsive.issmallscreen(context)? width/26 : width/60,fontFamily: 'main'),),
                    trailing:  Icon(person ? Icons.arrow_drop_up : Icons.arrow_drop_down),
                  ),),
             ),
            if(person)
              SingleChildScrollView(
                child:
                  Container(
                    width: double.infinity,
                    color: Colors.white,
                    child: Column(
                      children: [
                        Align(
                            alignment: Alignment.centerRight,
                            child: TextButton(onPressed: (){}, child: Text('Edit',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),))),
                        Container(
                          padding: EdgeInsets.only(left: 15,right: 15,bottom: 15),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Few Line Abou you:",style: TextStyle(fontSize: Responsive.issmallscreen(context)? width/27 : width/60,fontWeight: FontWeight.w700),),
                              SizedBox(height: 20,),
                              Text("Designation:",style: TextStyle(fontSize: Responsive.issmallscreen(context)? width/27 : width/60,fontWeight: FontWeight.w700),),
                              SizedBox(height: 20,),
                              Text("Professional summary:",style: TextStyle(fontSize: Responsive.issmallscreen(context)? width/27 : width/60,fontWeight: FontWeight.w700),),
                              SizedBox(height: 20,),
                              Text("Practing Since:",style: TextStyle(fontSize: Responsive.issmallscreen(context)? width/27 : width/60,fontWeight: FontWeight.w700),),
                              SizedBox(height: 20,),
                              Text("Profile URL:",style: TextStyle(fontSize: Responsive.issmallscreen(context)? width/27 : width/60,fontWeight: FontWeight.w700),),
                              SizedBox(height: 20,),
                              Text("Address:",style: TextStyle(fontSize: Responsive.issmallscreen(context)? width/27 : width/60,fontWeight: FontWeight.w700),),
                              SizedBox(height: 20,),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text("Your Chamber Address",style: TextStyle(fontSize: Responsive.issmallscreen(context)? width/27 : width/60,fontWeight: FontWeight.w700),),
                                  GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        _isSwitched = !_isSwitched;
                                      });
                                    },
                                    child: Container(
                                      width: 40,
                                      height: 20,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(20),
                                        color: _isSwitched ? Colors.blue : Colors.grey,
                                      ),
                                      child: Stack(
                                        children: [
                                          AnimatedContainer(
                                            duration: Duration(milliseconds: 300),
                                            alignment: _isSwitched ? Alignment.centerRight : Alignment.centerLeft,
                                            curve: Curves.ease,
                                            child: Container(
                                              width: 20,
                                              height: 20,
                                              decoration: BoxDecoration(
                                                shape: BoxShape.circle,
                                                color: Colors.white,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(height: 20,),
                              Text("Languages:",style: TextStyle(fontSize: Responsive.issmallscreen(context)? width/27 : width/60,fontWeight: FontWeight.w700),),
                              SizedBox(height: 20,),
                              Text("Facebook:",style: TextStyle(fontSize: Responsive.issmallscreen(context)? width/27 : width/60,fontWeight: FontWeight.w700),),
                              SizedBox(height: 20,),
                              Text("Twitter:",style: TextStyle(fontSize: Responsive.issmallscreen(context)? width/27 : width/60,fontWeight: FontWeight.w700),),
                              SizedBox(height: 20,),
                              Text("Video:",style: TextStyle(fontSize: Responsive.issmallscreen(context)? width/27 : width/60,fontWeight: FontWeight.w700),),


                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
              ),
            SizedBox(height: 15,),
            InkWell(
              onTap: (){
                setState(() {
                  experience = ! experience;
                });
              },
              child: Container(
                padding: EdgeInsets.only(top: 5,bottom: 5),
                color: Colors.white,
                child: ListTile(
                  leading: Icon(CupertinoIcons.bag),
                  title: Text('Experience',style: TextStyle(fontWeight: FontWeight.bold,fontSize: Responsive.issmallscreen(context)? width/26 : width/60,fontFamily: 'main'),),
                  trailing: Icon(experience ? Icons.arrow_drop_up : Icons.arrow_drop_down),
                ),),
            ),
            if(experience)
              ListView(
                shrinkWrap: true,
                children: [
                  Container(
                    color: Colors.white,
                    child: Column(
                      children: [
                        Align(
                            alignment: Alignment.centerRight,
                            child: TextButton(onPressed: (){}, child: Text('Edit',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),))),
                      ],
                    ),
                  )
                ]
              ),
            SizedBox(height: 15,),
            InkWell(
              onTap: (){
                setState(() {
                  education = ! education;
                });
              },
              child: Container(
                padding: EdgeInsets.only(top: 5,bottom: 5),
                color: Colors.white,
                child: ListTile(
                  leading: Icon(Icons.school),
                  title: Text('Education',style: TextStyle(fontWeight: FontWeight.bold,fontSize: Responsive.issmallscreen(context)? width/26 : width/60,fontFamily: 'main'),),
                  trailing: Icon(education ? Icons.arrow_drop_up : Icons.arrow_drop_down),
                ),),
            ),
            if(education)
              ListView(
                shrinkWrap: true,
                children:[
                  Container(
                    color: Colors.white,
                    child: Column(
                      children: [
                        Align(
                            alignment: Alignment.centerRight,
                            child: TextButton(onPressed: (){}, child: Text('Edit',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),))),
                      ],
                    ),
                  )
                ]
              ),
            SizedBox(height: 15,),
            InkWell(
              onTap: (){
                setState(() {
                  expertise = ! expertise;
                });
              },
              child: Container(
                padding: EdgeInsets.only(top: 5,bottom: 5),
                color: Colors.white,
                child: ListTile(
                  leading: Icon(Icons.balance),
                  title: Text('Expertise',style: TextStyle(fontWeight: FontWeight.bold,fontSize: Responsive.issmallscreen(context)? width/26 : width/60,fontFamily: 'main'),),
                  trailing: Icon(expertise ? Icons.arrow_drop_up : Icons.arrow_drop_down),
                ),),
            ),
            if(expertise)
              ListView(
                shrinkWrap: true,
                children: [
                  Container(
                    color: Colors.white,
                    child: Column(
                      children: [
                        Align(
                            alignment: Alignment.centerRight,
                            child: TextButton(onPressed: (){}, child: Text('Edit',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),))),
                      ],
                    ),
                  )
                ]
              ),
            SizedBox(height: 15,),
            InkWell(
              onTap: (){
                setState(() {
                  achievment = ! achievment;
                });
              },
              child: Container(
                padding: EdgeInsets.only(top: 5,bottom: 5),
                color: Colors.white,
                child: ListTile(
                  leading: Icon(Icons.star),
                  title: Text('Achievment',style: TextStyle(fontWeight: FontWeight.bold,fontSize: Responsive.issmallscreen(context)? width/26 : width/60,fontFamily: 'main'),),
                  trailing: Icon(achievment ? Icons.arrow_drop_up : Icons.arrow_drop_down),
                ),),
            ),
            if(achievment)
              ListView(
                shrinkWrap: true,
                children:[
                  Container(
                    color: Colors.white,
                    child: Column(
                      children: [
                        Align(
                            alignment: Alignment.centerRight,
                            child: TextButton(onPressed: (){}, child: Text('Edit',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),))),
                      ],
                    ),
                  )
                ]
              ),
            SizedBox(height: 15,),
            InkWell(
              onTap: (){
                setState(() {
                  bank = ! bank;
                });
              },
              child: Container(
                padding: EdgeInsets.only(top: 5,bottom: 5),
                color: Colors.white,
                child: ListTile(
                  leading: Icon(CupertinoIcons.building_2_fill),
                  title: Text('Bank Details',style: TextStyle(fontWeight: FontWeight.bold,fontSize: Responsive.issmallscreen(context)? width/26 : width/60,fontFamily: 'main'),),
                  trailing: Icon(bank ? Icons.arrow_drop_up : Icons.arrow_drop_down),
                ),),
            ),
            if(bank)
              ListView(
                shrinkWrap: true,
                children: [
                  Container(
                    color: Colors.white,
                    child: Column(
                      children: [
                        Align(
                            alignment: Alignment.centerRight,
                            child: TextButton(onPressed: (){}, child: Text('Edit',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),))),
                      ],
                    ),
                  )
                ]
              ),
          ],
        ),
      )
    );
  }
}




// personal.map((e) => Container(
// color: Colors.white,
// child: Padding(
// padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 10),
// child: Row(
// mainAxisAlignment: MainAxisAlignment.spaceBetween,
// children: [
// Text((e),style: TextStyle(fontSize: 18,fontWeight: FontWeight.w700),),
//
// ],
// ),
// ),
// )).toList(),
//
// List<String> personal = ['Few Lines About You :','Designation:','Professional Summary:','Practicing Since:','Profile Url:','Address:',
//   'Your Chamber Address:','Languages Konwn:''Facebbok:','Twitter:','Video:'];
// List<String> experiences = ['Cabem technology for 1 month'];
// List<String> educations = ['In 2017 completed 10th','In 2019 completed 12th','2020-2024 completed B.tech(Cse)'];
// List<String> expertises = ['Nothing'];
// List<String> achiev = ['Nothing'];
// List<String> banks = ['N/A'];
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
class Personalprofile extends StatefulWidget {
  const Personalprofile({super.key});

  @override
  State<Personalprofile> createState() => _PersonalprofileState();
}

class _PersonalprofileState extends State<Personalprofile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SafeArea(
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              children: [
                Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Column(
                      children: [
                        SizedBox(height: 20.h,),
                        CircleAvatar(
                          radius: 50.sp,
                          backgroundImage: AssetImage('asset/Me.jpeg'),
                        ),
                        //SizedBox(height: 2.h,),
                        InkWell(
                            onTap: (){},
                            child: Text(
                              'Md Johirul Islam',
                              style: TextStyle(
                                fontSize: 25.sp,
                                fontWeight: FontWeight.bold,
                                color: Colors.black54,
                              ),
                            )
                        ),
                        Text(
                          textAlign: TextAlign.center,
                          'Flutter Developer',
                          style: TextStyle(
                            fontSize: 18.sp,
                            fontWeight: FontWeight.bold,
                            color: Colors.black26,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 8,right: 8),
                          child: Text(
                            textAlign: TextAlign.center,
                              'Passionate about creating user-friendly and engaging digital experiences.',
                            style: TextStyle(
                              fontSize: 16.sp,
                              color: Colors.black38
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 8,right: 8),
                            child: Divider(
                              thickness: 1,
                              color: Colors.grey.shade200,
                            )
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 10,right: 10),
                          child: Container(
                            padding: EdgeInsets.only(bottom: 15.sp,),
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    Icon(Icons.mail,color: Colors.black38,size: 20.sp,),
                                    SizedBox(width: 5.h,),
                                    InkWell(
                                      onTap: (){},
                                      child: Text(
                                          'imjohirul214@gmail.com',
                                        style: TextStyle(
                                          color: Colors.black54,
                                          fontSize: 12.sp
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                                SizedBox(height: 10,),
                                Row(
                                  children: [
                                    Icon(Icons.phone,color: Colors.black38,size: 20.sp,),
                                    SizedBox(width: 5.h,),
                                    InkWell(
                                      onTap: (){},
                                      child: Text(
                                          '01320490782',
                                        style: TextStyle(
                                          color: Colors.black54,
                                          fontSize: 12.sp
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                                SizedBox(height: 10.h,),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    SizedBox(
                                      width : 80.w,
                                      child: ElevatedButton(
                                          onPressed: (){},
                                          child: Text('Follow'),
                                        style: ElevatedButton.styleFrom(
                                          shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.circular(8),
                                          ),
                                          backgroundColor: Colors.blue,
                                          foregroundColor: Colors.white,


                                        ),
                                      ),
                                    ),
                                    SizedBox(width: 10,),
                                    SizedBox(
                                      width : 80.w,
                                      child: ElevatedButton(
                                        onPressed: (){},
                                        child: Text('Message',style: TextStyle(fontWeight: FontWeight.bold),),
                                        style: ElevatedButton.styleFrom(
                                          shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.circular(8),
                                            side: BorderSide(color: Colors.grey,width: 1),
                                          ),
                                          foregroundColor: Colors.black54,
                                          backgroundColor: Colors.white,
                                        ),
                                      ),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                SizedBox(
                  height: 10.h,
                ),
                //Divider
                Container(
                  padding: EdgeInsets.only(left: 15,right: 15),
                  width: double.infinity,
                  child: Row(
                    children: [
                      Expanded(
                        child: Divider(
                          thickness: 2.sp,
                          color: Colors.grey.shade300,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left:10,right: 10),
                        child: Text(
                            'Interest',
                          style: TextStyle(
                            fontSize: 20.sp,
                            fontWeight: FontWeight.bold,
                            color: Colors.black54
                          ),
                        ),
                      ),
                      Expanded(
                        child: Divider(
                          thickness: 2.sp,
                          color: Colors.grey.shade300,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 10.h,
                ),
                //Card
                Container(
                  child: Column(
                    children: [
                    StaggeredGrid.count(
                    crossAxisCount: 4,
                    mainAxisSpacing: 4,
                    crossAxisSpacing: 4,
                    children: [
                      StaggeredGridTile.count(
                        crossAxisCellCount: 2,
                        mainAxisCellCount: 2,
                        child: Card(
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: AspectRatio(
                                  aspectRatio: 19/9,
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(10),
                                    child: Image.network(
                                        'https://i.redd.it/8nweob7bjd001.jpg',
                                      fit: BoxFit.cover,
                                      height: 100.h,
                                      width: double.infinity,
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(height: 5.h,),
                              Padding(
                                padding: const EdgeInsets.only(left: 15,right: 15),
                                child: Container(
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text('Travel',style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 13.sp,
                                        color: Colors.black54,
                                      ),),
                                      Text('Exploring new place around the world',
                                        style: TextStyle(
                                          fontSize: 10.sp,
                                          color: Colors.black54,
                                        )
                                      ),
                                      SizedBox(height: 5.h,),
                                      SizedBox(
                                        width: double.infinity,
                                          child: ElevatedButton(
                                              onPressed: (){},
                                              child: Text('View more'),
                                            style: ElevatedButton.styleFrom(
                                              shape: RoundedRectangleBorder(
                                                borderRadius: BorderRadius.circular(10),
                                              )
                                            ),
                                          )
                                      ),
                                    ],
                                  ),
                                ),
                              )

                            ],
                          ),
                        ),
                      ),
                      StaggeredGridTile.count(
                        crossAxisCellCount: 2,
                        mainAxisCellCount: 2,
                        child: Card(
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: AspectRatio(
                                  aspectRatio: 19/9,
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(10),
                                    child: Image.network(
                                      'https://i.redd.it/8nweob7bjd001.jpg',
                                      fit: BoxFit.cover,
                                      height: 100.h,
                                      width: double.infinity,
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(height: 5.h,),
                              Padding(
                                padding: const EdgeInsets.only(left: 15,right: 15),
                                child: Container(
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text('Travel',style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 13.sp,
                                        color: Colors.black54,
                                      ),),
                                      Text('Exploring new place around the world',
                                          style: TextStyle(
                                            fontSize: 10.sp,
                                            color: Colors.black54,
                                          )
                                      ),
                                      SizedBox(height: 5.h,),
                                      SizedBox(
                                          width: double.infinity,
                                          child: ElevatedButton(
                                            onPressed: (){},
                                            child: Text('View more'),
                                            style: ElevatedButton.styleFrom(
                                                shape: RoundedRectangleBorder(
                                                  borderRadius: BorderRadius.circular(10),
                                                )
                                            ),
                                          )
                                      ),
                                    ],
                                  ),
                                ),
                              )

                            ],
                          ),
                        ),
                      ),
                      
                    ],
                  ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

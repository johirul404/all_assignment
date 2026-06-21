import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class StudentprofileA extends StatefulWidget {
  const StudentprofileA({super.key});

  @override
  State<StudentprofileA> createState() => _StudentprofileAState();
}

class _StudentprofileAState extends State<StudentprofileA> {
  bool loading = true;
  void showDialogBox(){
    showDialog(
        barrierDismissible: false,
        context: context,
        builder: (context) => AlertDialog(
          title: Row(
            children: [
              Icon(Icons.school_outlined,color: Colors.blue,),
              SizedBox(width: 8.h,),
              Text('Student Details'),
            ],
          ),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Row(
                children: [
                  Icon(Icons.person,color: Colors.blue,),
                  SizedBox(width: 8.h,),
                  Text(
                    'Name: Md Johirul Islam',
                    style: TextStyle(
                        fontSize: 15.sp,
                        fontWeight: FontWeight.bold,
                        color: Colors.black26
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10,),
              Row(
                children: [
                  Icon(Icons.perm_contact_cal_outlined,color: Colors.blue,),
                  SizedBox(width: 8.h,),
                  Text(
                    'ID: 240035404',
                    style: TextStyle(
                        fontSize: 15.sp,
                        fontWeight: FontWeight.bold,
                        color: Colors.black26
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10,),
              Row(
                children: [
                  Icon(Icons.business_outlined,color: Colors.blue,),
                  SizedBox(width: 8.h,),
                  Expanded(child: Text(
                    'Dept: Computer Science & Engineering',
                    style: TextStyle(
                        fontSize: 15.sp,
                        fontWeight: FontWeight.bold,
                        color: Colors.black26
                    ),
                  )
                  ),
                ],
              ),
            ],
          ),
          actions: [
            TextButton(
              onPressed: (){
                Navigator.pop(context);
              },
              child: Text(
                textAlign: TextAlign.right,
                'Close',
                style: TextStyle(
                  color: Colors.blue,
                ),
              ),
            )
          ],
        )
    );
  }
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    loadData();
  }
  Future<void> loadData() async{
    await Future.delayed(Duration(seconds: 5));
    setState(() {
      loading = false;
    });
  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text('Student profile',
            style: TextStyle(
              fontSize: 25,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
          centerTitle: true,
          backgroundColor: Colors.blue,
        ),
        body: loading ? Shimmer.fromColors(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Card(
                  child: Container(
                    height: 250.h,
                    width: 250.w,
                  ),
                )
              ],
            ),
          ),
          baseColor: Colors.grey.shade300,
          highlightColor: Colors.grey.shade100,
        ): Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Card(
                child: Container(
                    height: 300.h,
                    width: 250.w,
                    //color: Colors.red,
                    child: Column(
                      children: [
                        Container(
                          height: 110.h,
                          width: 250.w,
                          //color: Colors.blue,
                          child: Stack(
                            alignment: Alignment.topCenter,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 30),
                                child: CircleAvatar(
                                  radius: 40,
                                  backgroundImage: AssetImage('asset/Me.jpeg'),
                                ),
                              ),
                              Positioned(
                                top: 25,
                                right: 76,
                                child: Container(
                                  height: 16.h,
                                  width: 35.w,
                                  decoration: BoxDecoration(
                                    color: Colors.red.shade300,
                                    borderRadius: BorderRadius.circular(50),
                                  ),
                                  child: InkWell(
                                    child: Text(
                                      textAlign: TextAlign.center,
                                      'New',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                      ),

                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Text(
                          'Md Johirul Islam',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 23.sp,
                            color: Colors.blue,
                          ),
                        ),
                        Text(
                          'ID: 240035404',
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 18.sp,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          'Computer Science & Engineering',
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 16.sp,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 10,left: 10,right: 10),
                          child: ElevatedButton(
                              onPressed: (){
                                showDialogBox();
                              },
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(Icons.info_outline,color: Colors.white,size: 25,),
                                  SizedBox(width: 10,),
                                  Text(
                                    'View Details',
                                    style: TextStyle(
                                      fontSize: 18.sp,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                    ),
                                  ),
                                ],
                              ),
                              style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.blue,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  )
                              )
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 5,left: 10,right: 10),
                          child: ElevatedButton(
                              onPressed: (){
                                ScaffoldMessenger.of(context).showSnackBar(
                                    SnackBar(
                                      content: Row(
                                        children: [
                                          Text('Md Johirul Islam marked as present',
                                            style: TextStyle(
                                              fontSize: 16.sp,
                                            ),
                                          ),
                                          SizedBox(width: 5,),
                                          Icon(Icons.check_box,color: Colors.green,),
                                        ],
                                      ),
                                    )
                                );
                              },
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(Icons.info_outline,color: Colors.green.shade200,size: 25,),
                                  SizedBox(width: 10,),
                                  Text(
                                    'Mark Present',
                                    style: TextStyle(
                                      fontSize: 18.sp,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.green.shade200,
                                    ),
                                  ),
                                ],
                              ),
                              style: ElevatedButton.styleFrom(
                                //backgroundColor: Colors.blue,
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10),
                                      side: BorderSide(
                                        color: Colors.green.shade200,
                                        width: 1,
                                      )
                                  )
                              )
                          ),
                        ),
                      ],
                    )
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

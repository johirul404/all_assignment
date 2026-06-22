import 'package:all_assignment/Assignment-13/AssignPages13/Details.dart';
import 'package:all_assignment/Assignment-13/AssignPages13/Home.dart';
import 'package:flutter/material.dart';
class Fontpage extends StatefulWidget {
  const Fontpage({super.key});

  @override
  State<Fontpage> createState() => _FontpageState();
}

class _FontpageState extends State<Fontpage> {
  int number = 0;
  int SelectIndex = -1;
  @override
  Widget build(BuildContext context) {
    Widget bodyContent;
    if(SelectIndex == -1){
      bodyContent = Center(
        child: Column(
          mainAxisAlignment: .center,
          children: [
            Text('Welcome',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25,color: Colors.black54),),
          ],
        ),
      );
    }
    else if(SelectIndex == 0){
      bodyContent = Home13(number: number,
        onIncrement: () {
          setState(() {
            number ++;
          });
        },
        OnDecrement: () {
          setState(() {
            number --;
          });
        },);
    }
    else{
      bodyContent = Details13(
        number: number,
        onBack: () {
          setState(() {
            SelectIndex = -1;
          });
        },
      );
    }
    return Scaffold(
      body: bodyContent,
      bottomNavigationBar: NavigationBar(
        selectedIndex: SelectIndex == -1 ? 0:SelectIndex,
          destinations: [
            NavigationDestination(icon: Icon(Icons.home), label: 'Home'),
            //ElevatedButton(
                // style: ElevatedButton.styleFrom(
                //     elevation: 0,
                //     backgroundColor: Colors.transparent,
                //     shadowColor: Colors.transparent,
                //     overlayColor: Colors.transparent,
                //     side: BorderSide.none
                // ),
                // onPressed: (){
            //   Navigator.push(context, MaterialPageRoute(builder: (context) => Details13(number: number, )));
            //  }, child:
                NavigationDestination(icon: Icon(Icons.error), label: 'About'),//),
          ],
        onDestinationSelected: (int index){
          SelectIndex = index;
          setState(() {

          });
        },
      ),
    );
  }
}

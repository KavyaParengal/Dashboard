
import 'package:flutter/material.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {

  bool _value=false;
  Color? green=Colors.green[400];
  Color? cyan=Colors.cyan[400];
  Color? orange=Colors.orange[300];
  Color? deepPurple=Colors.deepPurple[200];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(right: 12,left: 12),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('AlllnOne UI Kit',style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),),
                  Switch(
                    activeColor: Colors.lightGreen[600],
                    value: _value,
                    onChanged: (value) => setState(() => _value = value),
                  )
                ],
              ),
              SizedBox(height: 10,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  aboveContainer('Default Theme',cyan!,Icons.phone_android_rounded),
                  aboveContainer('Full Apps',deepPurple!,Icons.add_box_outlined),
                ],
              ),
              SizedBox(height: 15,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  aboveContainer('Integration',green!,Icons.language),
                  aboveContainer('Full Apps',orange!,Icons.dashboard_outlined),
                ],
              ),
              SizedBox(height: 20,),
              Align(
                alignment: Alignment.centerLeft,
                child: Text('Themes',style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),),
              ),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  leftContainer(orange!,Icons.wb_incandescent_outlined),
                  rightStack(orange!,'File Manager','Theme 1 Screens')
                ],
              ),
              SizedBox(height: 15,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  leftContainer(green!,Icons.person),
                  rightStack(green!,'Ecercise Tips','Theme 2 Screens'),
                ],
              ),
              SizedBox(height: 15,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  leftContainer(deepPurple!, Icons.next_week_outlined),
                  rightStack(deepPurple!,'Food Recipe','Theme 3 Screens'),
                ],
              ),
              SizedBox(height: 15,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  leftContainer(cyan!,Icons.next_week_outlined),
                  rightStack(cyan!,'Gym','Theme 4 Screens'),
                ],
              ),
              SizedBox(height: 15,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  leftContainer(orange!,Icons.wb_incandescent_outlined),
                  rightStack(orange!,'e-wallet','Theme 5 Screens'),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Stack rightStack(Color clr,String title,String subtitle) {
    return Stack(
        alignment: Alignment.centerRight,
        children:[
          Container(
            width: MediaQuery.of(context).size.width*.7,
            height: 70,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(2),
                boxShadow: [
                  BoxShadow(
                    offset: const Offset(0, 4),
                    color: Colors.grey.withOpacity(.4),
                    blurRadius: 1,
                  )
                ]
            ),
            child: Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(title,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 19),),
                  SizedBox(height: 8,),
                  Text(subtitle,style: TextStyle(fontWeight: FontWeight.w400),)
                ],
              ),
            ),
          ),
          CircleAvatar(
            radius: 16,
            backgroundColor: clr,
            child: Icon(Icons.arrow_forward_ios,color: Colors.white,size: 15,),
          )
        ]
    );
  }

  Container leftContainer(Color clr,IconData icondata) {
    return Container(
      width: 80,
      height: 70,
      decoration: BoxDecoration(
          color: clr,
          borderRadius: BorderRadius.circular(5)
      ),
      child: Icon(icondata,size: 50,color: Colors.white,),
    );
  }

  Container aboveContainer(String title,Color clr,IconData icondata) {
    return Container(
      height: MediaQuery.of(context).size.height*.13,
      width: MediaQuery.of(context).size.width*.45,
      decoration: BoxDecoration(
          color: clr,
          borderRadius: BorderRadius.circular(11)
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(icondata,color: Colors.white,size: 50,),
          SizedBox(height: 10,),
          Text(title,style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold,color: Colors.white),)
        ],
      ),
    );
  }
}




import 'package:flutter/material.dart';
class BulbToogleScreen extends StatefulWidget {
  const BulbToogleScreen({super.key});

  @override
  State<BulbToogleScreen> createState() => _BulbToogleScreenState();
}

class _BulbToogleScreenState extends State<BulbToogleScreen> {


  bool _isOn=false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          
          children: [
            _isOn?Image.asset('assets/images/on.png',height: 200,width: 200,)
            :Image.asset('assets/images/off.png',height: 200,width: 200,),
            ElevatedButton(onPressed: (){
              _isOn=!_isOn;
              setState(() {
                
              });
            },child:_isOn? Text('off',style: TextStyle(fontSize: 25),)
            :Text('on',style: TextStyle(fontSize: 25),))

            
          ],
        ),
      ),
    );
  }
}
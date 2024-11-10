import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeActivity(),
    );
  }
}

class HomeActivity extends StatelessWidget{
   HomeActivity({super.key});

  TextStyle textStyle =const TextStyle(fontWeight: FontWeight.bold,fontSize: 18);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(

      appBar:AppBar(
        title: const Text("My Profile"),
        backgroundColor: Colors.amber,
        toolbarHeight:60,
        actions: [
          IconButton(onPressed: (){}, icon:const Icon(Icons.add)),
          IconButton(onPressed: (){}, icon:const Icon(Icons.settings)),
          IconButton(onPressed: (){}, icon:const Icon(Icons.phone)),
        ],

      ),

      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              const CircleAvatar(
                radius:95,
                child: Icon(Icons.icecream_outlined,size:100,),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("Ice cream is very delicious right?",style:textStyle,),
              ),

              const SizedBox(height: 20),

              const CircleAvatar(
                radius:95,
                child: Icon(Icons.code,size:100,),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("Programming is not boring if you love it",style:textStyle,),
              ),

              const SizedBox(height: 20),

              const CircleAvatar(
                radius:95,
                child: Icon(Icons.egg_outlined,size:100,),
              ),

              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("If you submit code directly copy from chatgpt then mark will 0",style:textStyle,),
              ),



            ],
          ),
        ),
      ),

    );
  }
}
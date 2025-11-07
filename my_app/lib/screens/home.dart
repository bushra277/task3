import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:my_app/core/constant/app_color.dart';
import 'package:my_app/widgets/custom_drawer.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final List <Map<String , String>> images =[
    {'image' : 'assets/jpg/1.jpg'},
    {'image' : 'assets/jpg/2.jpg'},
    {'image' : 'assets/jpg/3.jpg'},
    {'image' : 'assets/jpg/4.jpg'},
    {'image' : 'assets/jpg/5.jpg'}
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColor.primaryColor,
        title: Text('Home' , style: TextStyle(color: Colors.white),),centerTitle: true,
      ),
      drawer: CustomDrawer(),
      body: SafeArea(
        child: Column(
          children: [
            CarouselSlider.builder(itemCount: images.length, 
            itemBuilder: (context, index, realIndex) {
              final imagess = images[index];
              final cimage = imagess['image'];
              return Padding(
                padding: EdgeInsets.all(12),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(18),
                  child: SizedBox(
                    width: MediaQuery.sizeOf(context).width,
                    child: Image(image: AssetImage(cimage!) , fit: BoxFit.cover,)
                    ),
                ),
              );
            }, 
            options: CarouselOptions(
              autoPlay: true,
            )),
          ],
        ),
      ),
    );
  }
}


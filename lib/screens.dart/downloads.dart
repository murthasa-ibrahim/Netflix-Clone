// ignore_for_file: sort_child_properties_last

import 'dart:math';

import 'package:flutter/material.dart';
import 'package:netflix/utilitites/utlities.dart';
import 'package:netflix/widgets/appbar_widget.dart';

class Downloads extends StatelessWidget {
  Downloads({Key? key}) : super(key: key);
  List imageList = [
    "https://www.themoviedb.org/t/p/w220_and_h330_face/bnfTPTTytrZZ9Aw6hoOQdojiaKo.jpg",
    "https://www.themoviedb.org/t/p/w220_and_h330_face/74kkM7E5IymHl7ZS4XugP6YT3zU.jpg",
        "https://www.themoviedb.org/t/p/w220_and_h330_face/9Gtg2DzBhmYamXBS1hKAhiwbBKS.jpg"
  ];
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
        appBar: const PreferredSize(
            preferredSize: Size.fromHeight(50),
            child: AppBarWidget(
              title: 'Downloads',
            )),
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: ListView(
              children: [
               const _SmartDownloads(),
               kheight,
                const Text('Indroducing Downloads For You',style: TextStyle(fontSize: 20,fontWeight: FontWeight.w900),textAlign:TextAlign.center,),
                kheight,
                const Text(
                    "we will download a personalized selection of \n movies and shows for you,so there's \n always something to watchon your \n device ",style: TextStyle(color: Colors.grey),textAlign: TextAlign.center,),
                    kheight,
                SizedBox(
                  
                  width: size.width,
                  height: size.width,
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      CircleAvatar(
                        backgroundColor: Colors.grey.withOpacity(.3),
                        radius: size.width * 0.36,
                      ),
                      DownloadImageWidget(image: imageList[0], margin: const EdgeInsets.only(left: 170,bottom: 50),angle:20 ,size: Size(size.width*0.35,size.height*0.25),),
                       DownloadImageWidget(image: imageList[1], margin: const EdgeInsets.only(right: 170,bottom: 50),angle: -20,size: Size(size.width*0.35,size.height*0.25),),
                        DownloadImageWidget(image: imageList[2], margin: const EdgeInsets.only(bottom: 12),size: Size(size.width*0.4,size.height*0.29),),

                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 12),
                  child: MaterialButton(
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
                    onPressed: () {},
                    child:  Padding(
                      padding:  EdgeInsets.symmetric(vertical: 10, ),
                      child: const Text(
                        'Setup',
                        style: TextStyle(
                            color: kWhite, fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                    ),
                    color: kBlue,
                  ),
                ),
                SizedBox(height: 10,),
                 Padding(
                  
                   padding:  EdgeInsets.symmetric(horizontal: 25),
                   child: MaterialButton(
                    
                    shape:  RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
                    onPressed: () {},
                    child:  Padding(
                      padding: const EdgeInsets.symmetric(vertical: 14),
                      child: const Text(
                        'See What You Can Download',
                        style: TextStyle(
                            color: kBlack, fontSize: 20, fontWeight: FontWeight.w700),
                      ),
                    ),
                    color: kWhite,
                ),
                 )
              ],
            ),
          ),
        ));
  }
}

class _SmartDownloads extends StatelessWidget {
  const _SmartDownloads({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: const [
        kWidth,
        Icon(
          Icons.settings,
          size: 30,
          color: kWhite,
        ),
        kWidth,
        Text('Samrt Downloads',style: TextStyle(fontWeight: FontWeight.bold),)
      ],
    );
  }
}

class DownloadImageWidget extends StatelessWidget {
  const DownloadImageWidget({Key? key, required this.image, required this.margin,required this.size,this.angle = 0})
      : super(key: key);

  final double angle;
  final String image;
  final EdgeInsets margin;
  final Size size;
  @override
  Widget build(BuildContext context) {
    
    return Transform.rotate(
        angle: angle* pi / 180,
        child: Container(
          margin: margin,
          width: size.width,
          height: size.height,
          decoration: BoxDecoration(
            
              image: DecorationImage(image: NetworkImage(image),fit: BoxFit.cover),
              borderRadius: BorderRadius.circular(8)),
        ));
  }
}

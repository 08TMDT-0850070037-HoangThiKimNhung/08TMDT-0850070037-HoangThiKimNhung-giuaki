// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

class JuicePage3 extends StatefulWidget {
  late String background="";
  late String title="";
  late String amount="";
  late String desc="";
  late String location = "";

   JuicePage3({super.key, required this.background,required this.title,required this.amount,required this.desc,required this.location});

  @override
  State<JuicePage3> createState() => _JuicePage3State();
}

class _JuicePage3State extends State<JuicePage3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Positioned.fill(
              child: Hero(
                tag: widget.background,
                child: Image.asset(
                  widget.background,
                  fit: BoxFit.cover,
                  color: Colors.black.withOpacity(0.6),
                  colorBlendMode: BlendMode.darken,
                ),
              ),
            ),
            ListView(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              children: [
                const SizedBox(
                  height: 70.0,
                ),
                Align(
                    alignment: Alignment.topLeft,
                    child: GestureDetector(
                      onTap: (){
                        Navigator.pop(context);
                      },
                      child: const Icon(
                        Icons.arrow_back,
                        color: Colors.white,
                        size: 35.0,
                      ),
                    )),
                const SizedBox(
                  height: 40.0,
                ),
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 10),
                  height: 300,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [BoxShadow(color: Colors.white.withOpacity(0.2),blurRadius: 5,offset: const Offset(3,3),),],
                    image: DecorationImage(
                      image: AssetImage(widget.background),
                      fit: BoxFit.cover,
                    )
                  ),
                ),
                const SizedBox(
                  height: 30.0,
                ),
                Align(
                  alignment: Alignment.centerLeft,
                    child: Text("${widget.title}Juice",style: const TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontFamily: "Uchen",fontSize: 30),)),
                const SizedBox(
                  height: 30.0,
                ),
                Align(
                    alignment: Alignment.centerLeft,
                    child: Text(widget.desc,style: TextStyle(color: Colors.white.withOpacity(0.8),fontWeight: FontWeight.w600,fontFamily: "SquarePeg",fontSize: 30),)),
                const SizedBox(
                  height: 25.0,
                ),
                Align(
                    alignment: Alignment.centerLeft,
                    child: Text(widget.location,style: TextStyle(color: Colors.white.withOpacity(0.8),fontWeight: FontWeight.w600,fontFamily: "SquarePeg",fontSize: 30),)),
                const SizedBox(
                  height: 25.0,
                ),
                Align(
                    alignment: Alignment.centerLeft,
                    child: Text(widget.amount,style: TextStyle(color: Colors.white.withOpacity(0.9),fontWeight: FontWeight.w800,fontFamily: "Uchen",fontSize: 30),)),
                const SizedBox(
                  height: 50.0,
                ),
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 40),
                  height: 50,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.white,width: 1.0),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: const Center(child: Text("Order now",style: TextStyle(color: Colors.white,fontSize: 25,fontWeight: FontWeight.bold,fontFamily: "Uchen"),)),
                ),
                const SizedBox(
                  height: 45.0,
                ),
                Align(
                    alignment: Alignment.center,
                    child: Text("deliverd within 15 - 20 min",style: TextStyle(color: Colors.white.withOpacity(0.9),fontWeight: FontWeight.w800,fontFamily: "Uchen",fontSize: 20),)),
                const SizedBox(
                  height: 50.0,
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}

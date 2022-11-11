import 'dart:html';


import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

void main(List<String> args) {
  runApp(MaterialApp(
    home: ecommerce(),
    debugShowCheckedModeBanner: false,
  ));
}

class ecommerce extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            
            backgroundColor: Colors.white,
            floating: true,
            pinned: true,
            snap: true,
            title: Container(
              height: 35,
              decoration: BoxDecoration(
                color: Colors.grey.withOpacity(.5),
                borderRadius: BorderRadius.circular(10),
              ),
              child: const TextField(
                cursorColor: Colors.black,
                decoration: InputDecoration(
                  hintText: "search here..",
                  prefixIcon: Icon(Icons.search_rounded,color: Colors.black,),
                  border: InputBorder.none
                ),
              ),
            ),
            actions: [
              Row(
                children: [
                  CircleAvatar(
                    backgroundColor: Colors.grey.withOpacity(.5),
                    child: const Icon(Icons.shopping_cart_outlined,color: Colors.black,),
                  ),
                  const SizedBox(
                    width: 2,
                  ),
                  CircleAvatar(
                    backgroundColor: Colors.grey.withOpacity(.5),
                    child: const Icon(Icons.notifications_outlined,color: Colors.black,),
                  ),
                ],
              )
            ],
          ),
          SliverList(delegate: SliverChildListDelegate(
            [
              Padding(padding: const EdgeInsets.all( 20,
              ),
             child: Center(
                child: Container(
                  height: 100,
                  width: 400,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    image: const DecorationImage(image: AssetImage("assets/img/cardbg.jpg"),
                    fit: BoxFit.cover)
                  ),
                 child:Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Padding(padding: EdgeInsets.only(top: 20,left: 10),
                    child:Text("A Summer Surprise",style: TextStyle(color: Colors.white,fontSize: 15),),),
                    const SizedBox(
                      width: 5,
                    ),
                    const Padding(padding: EdgeInsets.only(left: 10),
                   child: Text("Cashback 20%",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color: Colors.white),)),
                  ],
                 ) ,
                ),
              ),),
              const Padding(padding: EdgeInsets.only(top: 30),),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  mybutton(iconData: Icons.flash_on, buttonname: "Flash Deal"),
                  mybutton(iconData: Icons.payment_outlined, buttonname: "Bill"),
                  mybutton(iconData: Icons.games_outlined, buttonname: "Games"),
                  mybutton(iconData: Icons.card_giftcard_outlined, buttonname: 'Daily Gift'),
                  mybutton(iconData: Icons.more_vert, buttonname: "More"),
                 
                ],

              ),
               Padding(padding: const EdgeInsets.all( 10),
             child: Row(
               mainAxisAlignment: MainAxisAlignment.spaceBetween,
               children: [
              Text("Special for you",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,
               fontSize: 20),),
               TextButton(onPressed: (){}, child: const Text("See More",style: TextStyle(color: Colors.black,fontSize: 15),))]),
               ),

               Padding(padding: const EdgeInsets.only(top: 20),
               child:Container(
                height: 150,
                width: 300,
               child: ListView(
                scrollDirection: Axis.horizontal,
                padding: const EdgeInsets.only(left: 10),
              children:[  Container(
                    height: 150,
                    width: 300,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      image: const DecorationImage(image: AssetImage("assets/img/mobile.jpg"),
                      fit: BoxFit.fill),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Padding(padding: EdgeInsets.all(20),
                        child:Text("Smart phones",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.white),),),
                       const Padding(padding: EdgeInsets.all(20),
                        child:Text("18 Brands",style: TextStyle(color: Colors.white,fontSize: 15),),),
            ]), 
               ),
               const Padding(padding: EdgeInsets.only(left: 10)),
                Container(
                    height: 150,
                    width: 300,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      image: const DecorationImage(image: AssetImage("assets/img/fashion.webp"),
                      fit: BoxFit.fill),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Padding(padding: EdgeInsets.all(20),
                        child:Text("Fashion",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.white),),),
                       const Padding(padding: EdgeInsets.all(20),
                        child:Text("24 Brands",style: TextStyle(color: Colors.white,fontSize: 15),),),
            ]), 
               ),
           
            ]))),
             Padding(padding: const EdgeInsets.all( 10),
             child: Row(
               mainAxisAlignment: MainAxisAlignment.spaceBetween,
               children: [
              Text("Popular Product",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,
               fontSize: 20),),
               TextButton(onPressed: (){}, child: const Text("See More",style: TextStyle(color: Colors.black,fontSize: 15),))]),
               ),
            Padding(padding: const EdgeInsets.only(top: 30),
            child: Container(
              height: 100,
              width: 100,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  const Padding(padding: EdgeInsets.only(left: 10)),
                  Container(
                    height: 200,
                    width: 125,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      image: const DecorationImage(image: AssetImage("assets/img/game.jpg"),
                      fit: BoxFit.fill,)
                    ),
                  ),
                     const Padding(padding: EdgeInsets.only(left: 10)),
                  Container(
                    height: 200,
                    width: 125,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      image: const DecorationImage(image: AssetImage("assets/img/shoes.webp"),
                      fit: BoxFit.fill,)
                    ),
                  ),
                     const Padding(padding: EdgeInsets.only(left: 10)),
                  Container(
                    height: 200,
                    width: 125,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      image: const DecorationImage(image: AssetImage("assets/img/sports.jpg"),
                      fit: BoxFit.fill,)
                    ),
                  ),
                     const Padding(padding: EdgeInsets.only(left: 10)),
                  Container(
                    height: 200,
                    width: 125,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      image: const DecorationImage(image: AssetImage("assets/img/watches.jpg"),
                      fit: BoxFit.fill,)
                    ),
                  ),

                ],
              ),
            ),
            
            )
            ],
          ),),
        ],
        
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.shifting,
        unselectedItemColor: Colors.black,
        selectedItemColor: Colors.orange,
        backgroundColor: Colors.white,
        currentIndex: 0,

        items:[
          const BottomNavigationBarItem(icon: Icon(Icons.storefront_outlined,color: Colors.orange,),label: ''),
          const BottomNavigationBarItem(icon: Icon(Icons.favorite_outline_rounded,color: Colors.orange,),label: ''),
          const BottomNavigationBarItem(icon: Icon(Icons.message_outlined,color: Colors.orange,),label: ''),
          const BottomNavigationBarItem(icon: Icon(Icons.person_outline_sharp,color: Colors.orange,),label: ''),
        ] ),
      
    );
  }
}
class mybutton extends  StatelessWidget{
  final IconData iconData;
  final String buttonname;
  mybutton({required this.iconData,required this.buttonname});
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Container(
        decoration: BoxDecoration(
          color: const Color.fromARGB(255, 247, 205, 219),
          borderRadius: BorderRadius.circular(10),
        ),
        height: 50,
        width: 50,
        child: Center(child: Icon(iconData,color: Colors.orange,),),
        
      ),
      Padding(padding: const EdgeInsets.only(top: 5),
     child: SizedBox(
        height: 70,
        width: 50,
        
        child: Text(buttonname,style: const TextStyle(fontSize: 15),textAlign: TextAlign.center,),),
      ),
     
      
    ],);
  }

}

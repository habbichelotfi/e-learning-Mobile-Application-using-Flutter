
import 'package:flutter/material.dart';
class AllCourses extends StatefulWidget {
  const AllCourses({Key? key}) : super(key: key);

  @override
  _AllCoursesState createState() => _AllCoursesState();
}

class _AllCoursesState extends State<AllCourses> {
  List<bool> favorite_=[false,true,false,false,false];
  @override
  Widget build(BuildContext context) {
    return
    Scaffold(body:

      SafeArea(

          child: SingleChildScrollView(

          child:
      Container(

        margin: EdgeInsets.all(10),
         child: Column(
           children: [
Row(
  children: [
    InkWell(
        onTap: () async {
          await Future.delayed(Duration(milliseconds: 300));
          Navigator.pop(context);
        },
        child:Ink(child:
    Container(
      width: 35,
        height: 35,
        decoration: BoxDecoration(
          border: Border.all(color: Colors.grey),
          borderRadius: BorderRadius.circular(10)
        ),
        child:
    Icon(Icons.arrow_back_ios_outlined,color: Colors.grey,size: 20,)))),
   SizedBox(width: 30,),
   Align(alignment: Alignment.center,
       child: Text('Course List',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 21),))
  ],
),
             SizedBox(height: 45,),
             Row(
               crossAxisAlignment: CrossAxisAlignment.end,
               mainAxisAlignment: MainAxisAlignment.start,
               children: [
                 Container(
                   padding: EdgeInsets.all(10),
                   decoration: BoxDecoration(
                     color: Colors.orange.shade700,
                     borderRadius: BorderRadius.only(
                       topRight: Radius.circular(30),
                       topLeft: Radius.circular(30),
                       bottomLeft: Radius.circular(30)
                     ),
                    
                   ),
                   child:Column(
                     children: [
                       SizedBox(height: 5,),
                       Text('UX Fundamentals',style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold,color: Colors.white),),
Text('in 50 minutes',style: TextStyle(fontSize: 12,color: Colors.white),),
                       SizedBox(height: 10,),
                       Container(
                         padding: EdgeInsets.all(10),
                           decoration: BoxDecoration(
                             borderRadius: BorderRadius.circular(10),
                             color: Colors.white
                           ),
                           child:
                       Image.asset('assets/images/clock.png',color: Colors.black,width: 60,height: 60,))
                     ],
                   ),
                 ),

                    Container(
                      width: 265,
                     decoration: BoxDecoration(
                       color: Colors.white,
                       borderRadius: BorderRadius.only(

                           topRight: Radius.circular(30),
                           bottomRight: Radius.circular(30)
                       ),
                     ),
                     padding: EdgeInsets.all(5),
                     child: Column(
                       crossAxisAlignment: CrossAxisAlignment.start,
                       children: [
                         Row(
                           mainAxisAlignment: MainAxisAlignment.spaceBetween,
                           children: [
                             Text('UX Fundamentals',style: TextStyle(fontSize: 19,fontWeight: FontWeight.bold),),
                             SizedBox(width: 12,),
                           GestureDetector(
                               onTap: (){
                                 if(favorite_[0])
                                   ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                                     content: Text('UX Fundamentals was added to your favorites'),
                                   ));
                                 else{
                                   ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                                     content: Text('UX Fundamentals was deleted from your favorites'),
                                   ));
                                 }
                                 setState(() {
                                   favorite_[0]=!favorite_[0];
                                 });
                               },
                               child:  Container(
                               width: 35,
                               height: 35,
                               decoration: BoxDecoration(
                                   color: Colors.pink.shade50,

                                   borderRadius: BorderRadius.circular(10)
                               ),
                               child:
                               favorite_[0]? Icon(

                                 Icons.favorite_border_outlined,color: Colors.pink.shade200,)
                                 :Icon(Icons.favorite,color:Colors.red),))
                           ],
                         ),
                         SizedBox(height: 10,),
                         Text('79 Lectures',style: TextStyle(color: Colors.grey,fontSize: 16),),
                         SizedBox(height: 10,),

                         Row(
                           mainAxisAlignment: MainAxisAlignment.spaceAround,
                           children: [
                             Container(
                               child: Row(
                                 children: [
                                   Icon(Icons.people,color: Colors.grey,size: 17,),
                                   Text('1.2K',style: TextStyle(color: Colors.grey,fontSize: 14))
                                 ],
                               ),
                             ),
                             SizedBox(width: 10,),
                             Container(
                               child: Row(
                                 children: [
                                   Icon(Icons.star,color: Colors.grey,size: 17,),
                                   Text('4.5',style: TextStyle(color: Colors.grey,fontSize: 14))
                                 ],
                               ),
                             ),
                             SizedBox(width: 47,),
                             Text("\$300",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18,color: Colors.blue.shade700),)
                           ],
                         ),
                         SizedBox(height: 10,),

                       ],
                     ),
                   ),

               ],
             ),
SizedBox(
  height: 20,
),
             Row(
               crossAxisAlignment: CrossAxisAlignment.end,
               mainAxisAlignment: MainAxisAlignment.start,
               children: [
                 Container(
                   padding: EdgeInsets.all(10),
                   decoration: BoxDecoration(
                     color: Colors.blue.shade300,
                     borderRadius: BorderRadius.only(
                         topRight: Radius.circular(30),
                         topLeft: Radius.circular(30),
                         bottomLeft: Radius.circular(30)
                     ),

                   ),
                   child:Column(
                     children: [
                       SizedBox(height: 20,),

                       Image.asset('assets/images/thinking.png',width: 100,height: 100,)
                     ],
                   ),
                 ),

                    Container(
                      width: 265,

                      decoration: BoxDecoration(
                       color: Colors.white,
                       borderRadius: BorderRadius.only(
                           topRight: Radius.circular(30),
                           bottomRight: Radius.circular(30)
                       ),
                     ),
                     padding: EdgeInsets.all(5),
                     child: Column(
                       crossAxisAlignment: CrossAxisAlignment.start,
                       children: [
                         Row(
                           mainAxisAlignment: MainAxisAlignment.spaceBetween,

                           children: [
                             Text('UX&UI Thinking',style: TextStyle(fontSize: 19,fontWeight: FontWeight.bold),),
                             SizedBox(width: 22,),
                             GestureDetector(
                                 onTap: (){
                                   if(favorite_[1])
                                   ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                                     content: Text('UX&UI Thinking was added to your favorites'),
                                   ));
                                   else{
                                     ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                                       content: Text('UX&UI Thinking was deleted from your favorites'),
                                     ));
                                   }

                                   setState(() {
                                     favorite_[1]=!favorite_[1];
                                   });
                                 },
                                 child:  Container(
                                   width: 35,
                                   height: 35,
                                   decoration: BoxDecoration(
                                       color: Colors.pink.shade50,

                                       borderRadius: BorderRadius.circular(10)
                                   ),
                                   child:
                                   favorite_[1]? Icon(

                                     Icons.favorite_border_outlined,color: Colors.pink.shade200,)
                                       :Icon(Icons.favorite,color:Colors.red),))
                           ],
                         ),
                         SizedBox(height: 10,),
                         Text('79 Lectures',style: TextStyle(color: Colors.grey,fontSize: 16),),
                         SizedBox(height: 10,),

                         Row(
                           mainAxisAlignment: MainAxisAlignment.spaceAround,

                           children: [
                             Container(
                               child: Row(
                                 children: [
                                   Icon(Icons.people,color: Colors.grey,size: 17,),
                                   Text('1.2K',style: TextStyle(color: Colors.grey,fontSize: 14))
                                 ],
                               ),
                             ),
                             SizedBox(width: 10,),
                             Container(

                               child: Row(
                                 children: [
                                   Icon(Icons.star,color: Colors.grey,size: 17,),
                                   Text('4.5',style: TextStyle(color: Colors.grey,fontSize: 14))
                                 ],
                               ),
                             ),
                             SizedBox(width: 47,),
                             Text("\$300",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18,color: Colors.blue.shade700),)
                           ],
                         ),
                         SizedBox(height: 10,),

                       ],
                     ),
                   ),

               ],
             ),
             SizedBox(
               height: 20,
             ),
             Row(
               crossAxisAlignment: CrossAxisAlignment.end,
               mainAxisAlignment: MainAxisAlignment.start,
               children: [
                 Container(
                   padding: EdgeInsets.all(10),
                   decoration: BoxDecoration(
                     color: Colors.green.shade300,
                     borderRadius: BorderRadius.only(
                         topRight: Radius.circular(30),
                         topLeft: Radius.circular(30),
                         bottomLeft: Radius.circular(30)
                     ),

                   ),
                   child:Column(
                     children: [
                       SizedBox(height: 20,),

                       Image.asset('assets/images/ux_research.png',width: 100,height: 100,)
                     ],
                   ),
                 ),

                   Container(
                     width: 265,
                     decoration: BoxDecoration(
                       color: Colors.white,
                       borderRadius: BorderRadius.only(
                           topRight: Radius.circular(30),
                           bottomRight: Radius.circular(30)
                       ),
                     ),
                     padding: EdgeInsets.all(5),
                     child: Column(
                       crossAxisAlignment: CrossAxisAlignment.start,
                       children: [
                         Row(
                           mainAxisAlignment: MainAxisAlignment.spaceBetween,

                           children: [
                             Text('UX Research',style: TextStyle(fontSize: 19,fontWeight: FontWeight.bold),),
                             SizedBox(width: 22,),
                            GestureDetector(
                                onTap: (){
                                  if(favorite_[2])
                                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                                      content: Text('UX Research was added to your favorites'),
                                    ));
                                  else{
                                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                                      content: Text('UX Research was deleted from your favorites'),
                                    ));
                                  }
                                  setState(() {
                                    favorite_[2]=!favorite_[2];
                                  });

                                },
                                child: Container(
                               width: 35,
                               height: 35,
                               decoration: BoxDecoration(
                                   color: Colors.pink.shade50,

                                   borderRadius: BorderRadius.circular(10)
                               ),
                               child:
                               favorite_[2]? Icon(Icons.favorite,color: Colors.red,):Icon(Icons.favorite_border_outlined,color: Colors.red,),))
                           ],
                         ),
                         SizedBox(height: 10,),
                         Text('79 Lectures',style: TextStyle(color: Colors.grey,fontSize: 16),),
                         SizedBox(height: 10,),

                         Row(
                           mainAxisAlignment: MainAxisAlignment.spaceAround,

                           children: [
                             Container(
                               child: Row(
                                 children: [
                                   Icon(Icons.people,color: Colors.grey,size: 17,),
                                   Text('1.2K',style: TextStyle(color: Colors.grey,fontSize: 14))
                                 ],
                               ),
                             ),
                             SizedBox(width: 10,),
                             Container(
                               child: Row(
                                 children: [
                                   Icon(Icons.star,color: Colors.grey,size: 17,),
                                   Text('4.5',style: TextStyle(color: Colors.grey,fontSize: 14))
                                 ],
                               ),
                             ),
                             SizedBox(width: 47,),
                             Text("\$300",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18,color: Colors.blue.shade700),)
                           ],
                         ),
                         SizedBox(height: 10,),

                       ],
                     ),
                   ),

               ],
             ),
             SizedBox(
               height: 20,
             ),
             Row(
               crossAxisAlignment: CrossAxisAlignment.end,
               mainAxisAlignment: MainAxisAlignment.start,
               children: [
                 Container(
                   padding: EdgeInsets.all(10),
                   decoration: BoxDecoration(
                     color: Colors.grey.shade300,
                     borderRadius: BorderRadius.only(
                         topRight: Radius.circular(30),
                         topLeft: Radius.circular(30),
                         bottomLeft: Radius.circular(30)
                     ),

                   ),
                   child:Column(
                     children: [
                       SizedBox(height: 20,),

                       Image.asset('assets/images/ui-design.png',width: 100,height: 100,)
                     ],
                   ),
                 ),

                 Container(
                   width: 265,

                   decoration: BoxDecoration(
                     color: Colors.white,
                     borderRadius: BorderRadius.only(
                         topRight: Radius.circular(30),
                         bottomRight: Radius.circular(30)
                     ),
                   ),
                   padding: EdgeInsets.all(5),
                   child: Column(
                     crossAxisAlignment: CrossAxisAlignment.start,
                     children: [
                       Row(
                         mainAxisAlignment: MainAxisAlignment.spaceBetween,

                         children: [
                           Text('UI Design',style: TextStyle(fontSize: 19,fontWeight: FontWeight.bold),),
                           SizedBox(width: 22,),
                           GestureDetector(
                             onTap: (){
                               if(favorite_[3])
                                 ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                                   content: Text('UI Desing was added to your favorites'),
                                 ));
                               else{
                                 ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                                   content: Text('UI Design was deleted from your favorites'),
                                 ));
                               }
                               setState(() {
                                 favorite_[3]=!favorite_[3];
                               });

                             },
                             child: Container(
                             width: 35,
                             height: 35,
                             decoration: BoxDecoration(
                                 color: Colors.pink.shade50,

                                 borderRadius: BorderRadius.circular(10)
                             ),
                             child:
                             favorite_[3]? Icon(Icons.favorite,color: Colors.red,):Icon(Icons.favorite_border_outlined,color: Colors.red,),))
                         ],
                       ),
                       SizedBox(height: 10,),
                       Text('79 Lectures',style: TextStyle(color: Colors.grey,fontSize: 16),),
                       SizedBox(height: 10,),

                       Row(
                         mainAxisAlignment: MainAxisAlignment.spaceAround,

                         children: [
                           Container(
                             child: Row(
                               children: [
                                 Icon(Icons.people,color: Colors.grey,size: 17,),
                                 Text('1.2K',style: TextStyle(color: Colors.grey,fontSize: 14))
                               ],
                             ),
                           ),
                           SizedBox(width: 10,),
                           Container(

                             child: Row(
                               children: [
                                 Icon(Icons.star,color: Colors.grey,size: 17,),
                                 Text('4.5',style: TextStyle(color: Colors.grey,fontSize: 14))
                               ],
                             ),
                           ),
                           SizedBox(width: 47,),
                           Text("\$300",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18,color: Colors.blue.shade700),)
                         ],
                       ),
                       SizedBox(height: 10,),

                     ],
                   ),
                 ),

               ],
             ),
             SizedBox(
               height: 20,
             ),
             Row(
               crossAxisAlignment: CrossAxisAlignment.end,
               mainAxisAlignment: MainAxisAlignment.start,
               children: [
                 Container(
                   padding: EdgeInsets.all(10),
                   decoration: BoxDecoration(
                     color: Colors.blue.shade300,
                     borderRadius: BorderRadius.only(
                         topRight: Radius.circular(30),
                         topLeft: Radius.circular(30),
                         bottomLeft: Radius.circular(30)
                     ),

                   ),
                   child:Column(
                     children: [
                       SizedBox(height: 20,),

                       Image.asset('assets/images/coding.png',width: 100,height: 100,)
                     ],
                   ),
                 ),

                 Container(
                   width: 265,

                   decoration: BoxDecoration(
                     color: Colors.white,
                     borderRadius: BorderRadius.only(
                         topRight: Radius.circular(30),
                         bottomRight: Radius.circular(30)
                     ),
                   ),
                   padding: EdgeInsets.all(5),
                   child: Column(
                     crossAxisAlignment: CrossAxisAlignment.start,
                     children: [
                       Row(
                         mainAxisAlignment: MainAxisAlignment.spaceBetween,

                         children: [
                           Text('Web Development',style: TextStyle(fontSize: 19,fontWeight: FontWeight.bold),),
                           SizedBox(width: 22,),
                           GestureDetector(
                             onTap: (){
                               if(favorite_[4])
                                 ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                                   content: Text('Web Development was added to your favorites'),
                                 ));
                               else{
                                 ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                                   content: Text('Web Development was deleted from your favorites'),
                                 ));
                               }
                               setState(() {
                                 favorite_[4]=!favorite_[4];
                               });

                             },
                             child:Container(
                             width: 35,
                             height: 35,
                             decoration: BoxDecoration(
                                 color: Colors.pink.shade50,

                                 borderRadius: BorderRadius.circular(10)
                             ),
                             child:
                            favorite_[4]? Icon(Icons.favorite,color: Colors.red,):Icon(Icons.favorite_border_outlined,color: Colors.red,),))
                         ],
                       ),
                       SizedBox(height: 10,),
                       Text('79 Lectures',style: TextStyle(color: Colors.grey,fontSize: 16),),
                       SizedBox(height: 10,),

                       Row(
                         mainAxisAlignment: MainAxisAlignment.spaceAround,

                         children: [
                           Container(
                             child: Row(
                               children: [
                                 Icon(Icons.people,color: Colors.grey,size: 17,),
                                 Text('1.2K',style: TextStyle(color: Colors.grey,fontSize: 14))
                               ],
                             ),
                           ),
                           SizedBox(width: 10,),
                           Container(

                             child: Row(
                               children: [
                                 Icon(Icons.star,color: Colors.grey,size: 17,),
                                 Text('4.5',style: TextStyle(color: Colors.grey,fontSize: 14))
                               ],
                             ),
                           ),
                           SizedBox(width: 47,),
                           Text(""
                               "\$300",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18,color: Colors.blue.shade700),)
                         ],
                       ),
                       SizedBox(height: 10,),

                     ],
                   ),
                 ),

               ],
             ),

           ],
         ),

      ))));
  }
}

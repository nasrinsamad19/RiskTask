// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:risk_app/material/colors.dart';
// import 'package:risk_app/material/screen_constraints.dart';
//
// class RiskMainPage extends StatefulWidget {
//   const RiskMainPage({super.key});
//
//   @override
//   State<RiskMainPage> createState() => _RiskMainPageState();
// }
//
// class _RiskMainPageState extends State<RiskMainPage> {
//   final List<String> items = [
//     'Item 1',
//     'Item 2',
//     'Item 3',
//     'Item 4',
//
//   ];
//   @override
//   Widget build(BuildContext context) {
//     return  Scaffold(
//       body: Container(
//        child: ListView.builder(
//          itemCount: items.length,
//            shrinkWrap: true,
//            itemBuilder: (BuildContext context, int index){
//              return ExpansionTile(
//                backgroundColor: Mycolors.blue,
//                children: [
//                  ListView.builder(
//                      itemCount: items.length,
//                      shrinkWrap: true,
//                      itemBuilder: (BuildContext context, int index){
//                        return ExpansionTile(
//                          backgroundColor: Mycolors.blue,
//                          children: [
//
//                          ],
//                          title: Text(items.first),
//                          // child: Container(
//                          //   decoration: BoxDecoration(
//                          //       border: Border.all(
//                          //         color: Mycolors.blue,
//                          //       )
//                          //   ),
//                          //   child: Row(
//                          //     children: [
//                          //       Text(
//                          //           items.first
//                          //       ),
//                          //       IconButton(onPressed: (){
//                          //
//                          //       }, icon: Icon(Icons.arrow_drop_down_outlined))
//                          //     ],
//                          //   ) ,
//                          // ),
//
//                        );
//                      }
//                  ),
//                  SizedBox(height: 10,)
//                ],
//                title: Text(),
//                // child: Container(
//                //   decoration: BoxDecoration(
//                //       border: Border.all(
//                //         color: Mycolors.blue,
//                //       )
//                //   ),
//                //   child: Row(
//                //     children: [
//                //       Text(
//                //           items.first
//                //       ),
//                //       IconButton(onPressed: (){
//                //
//                //       }, icon: Icon(Icons.arrow_drop_down_outlined))
//                //     ],
//                //   ) ,
//                // ),
//
//              );
//            }
//        ),
//
//       ),
//     );
//   }
// }

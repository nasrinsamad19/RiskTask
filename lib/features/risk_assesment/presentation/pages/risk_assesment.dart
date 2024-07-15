import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:risk_app/features/risk_assesment/presentation/widgets/form.dart';
import 'package:risk_app/material/colors.dart';
import 'package:risk_app/material/screen_constraints.dart';

class RiskAssesmentPage extends StatefulWidget {
  const RiskAssesmentPage({super.key});

  @override
  State<RiskAssesmentPage> createState() => _RiskAssesmentPageState();
}

class _RiskAssesmentPageState extends State<RiskAssesmentPage> {
  String _selectedItem = "Option 1";
  String _selectedRisk = "Option 1";
  TextEditingController noteController = TextEditingController();
  final  items = [
    'Physical Hazard',
    'Safety Hazard',
    'Chemical Hazard',
    'Item 4',

  ];
  final  risks = [
    'cleaning procedure',
    'pestisides',
    'Item 3',
    'Item 4',

  ];
  String dropdownvalue = 'Item 1';

  // List of items in our dropdown menu


  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SingleChildScrollView(
        padding: EdgeInsets.all(30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text('Risk Assessment',style: TextStyle(
              fontWeight: FontWeight.w700,
              fontSize: 16
            ),),
            Container(
              child: ListView.builder(
                  itemCount: items.length,
                  shrinkWrap: true,
                  itemBuilder: (BuildContext context, int index){
                    return Card(
                      color: Mycolors.blue,
                      child: ExpansionTile(
                        shape: Border(),
                        children: [
                         Container(
                           child:  ListView.builder(
                               itemCount: items.length,
                               shrinkWrap: true,
                               itemBuilder: (BuildContext context, int index){
                                 return Card(
                                   child: ExpansionTile(
                                     shape: Border(),
                                     backgroundColor: Mycolors.blue,
                                     children: [
                                       Row(
                                         children: [
                                           Container(

                                             width: width(context)/2.5,
                                             child: Column(

                                               children: [

                                                 Text('Risk Description'),
                                                 SizedBox(height: 10,),
                                                 TextFormField(
                                                   controller: noteController,
                                                   decoration: InputDecoration(
                                                     alignLabelWithHint: true,
                                                     border: OutlineInputBorder(),
                                                     labelStyle: TextStyle(
                                                         color: Colors.black
                                                     ),
                                                   ),
                                                 ),
                                                 SizedBox(height: 15,),
                                                 Text('Go'),
                                                 SizedBox(height: 10,),
                                                 TextFormField(
                                                   controller: noteController,
                                                   decoration: InputDecoration(
                                                     alignLabelWithHint: true,
                                                     border: OutlineInputBorder(),
                                                     labelStyle: TextStyle(
                                                         color: Colors.black
                                                     ),
                                                   ),
                                                 ),
                                                 SizedBox(height: 15,),
                                                 Text('Final acore'),
                                                 SizedBox(height: 10,),
                                                 TextFormField(
                                                   controller: noteController,
                                                   decoration: InputDecoration(
                                                     alignLabelWithHint: true,
                                                     border: OutlineInputBorder(),
                                                     labelStyle: TextStyle(
                                                         color: Colors.black
                                                     ),
                                                   ),
                                                 ),
                                                 SizedBox(height: 15,),

                                               ],
                                               crossAxisAlignment: CrossAxisAlignment.start,
                                             ),
                                           ),
                                           SizedBox(width: 10,),
                                           Container(
                                             width: width(context)/2.5,
                                             child:
                                             Column(

                                               children: [

                                                 Text('Initial score'),
                                                 SizedBox(height: 10,),
                                                 TextFormField(
                                                   controller: noteController,
                                                   decoration: InputDecoration(
                                                     alignLabelWithHint: true,
                                                     border: OutlineInputBorder(),
                                                     labelStyle: TextStyle(
                                                         color: Colors.black
                                                     ),
                                                   ),
                                                 ),
                                                 SizedBox(height: 15,),
                                                 Text('Migration measure'),
                                                 SizedBox(height: 10,),
                                                 TextFormField(
                                                   controller: noteController,
                                                   decoration: InputDecoration(
                                                     alignLabelWithHint: true,
                                                     border: OutlineInputBorder(),
                                                     labelStyle: TextStyle(
                                                         color: Colors.black
                                                     ),
                                                   ),
                                                 ),
                                                 SizedBox(height: 15,),
                                                 Text('No go'),
                                                 SizedBox(height: 10,),
                                                 TextFormField(
                                                   controller: noteController,
                                                   decoration: InputDecoration(
                                                     alignLabelWithHint: true,
                                                     border: OutlineInputBorder(),
                                                     labelStyle: TextStyle(
                                                         color: Colors.black
                                                     ),
                                                   ),
                                                 ),
                                                 SizedBox(height: 15,),


                                               ],
                                               crossAxisAlignment: CrossAxisAlignment.start,
                                             ),
                                           )
                                         ],
                                       )



                                     ],
                                     title: Text(risks[index]), // child: Container(

                                   ),
                                 );
                               }
                           ),
                         )
                        ],
                        title: Text(items[index]), // child: Container(


                      ),
                    );
                  }
              ),
            ),
            SizedBox(height: 15,),

            SizedBox(
              height: 20,
            ),
            Container(
              //height: height(context)*.6,
              child: TextFormField(
                controller: noteController,
                maxLines: 5,
                minLines: 3,

                decoration: InputDecoration(
                  alignLabelWithHint: true,
                  isDense: true,
                  border: OutlineInputBorder(),
                  labelStyle: TextStyle(
                    color: Colors.black
                  ),
                  labelText: 'Enter Notes..'
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Row(
                children: [
                  Container(
                    color:Mycolors.pink,
                    width: width(context)/5,
                    child: TextButton(
                      onPressed: () {},
                      child: Container(
                        color:Mycolors.pink,
                        width: width(context)/5,
                        padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                        child: const Text(
                          'Skip',
                          style: TextStyle(color: Colors.white, fontSize: 13.0),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    color: Mycolors.yellow,
                      width: width(context)/1.5,
                      child: TextButton(
                        onPressed: () {},
                        child: Container(
                          color: Mycolors.yellow,
                          width: width(context)/2,
                          padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                          child: const Text(
                            'Save',
                            style: TextStyle(color: Colors.white, fontSize: 13.0),
                          ),
                        ),
                      ),
                  )
                ],
              ),
            )




          ],
        ),
      ),
    );
  }

}

import 'package:flutter/material.dart';
import 'package:my_project/utils/color_constant/color_constant.dart';
import 'package:my_project/utils/font_constsnt/font_constant.dart';
import 'package:my_project/utils/image_constant/image_constant.dart';

class GuideScreen extends StatelessWidget {
  const GuideScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ColorConstant.MainGreen,
        leading: Icon(Icons.task_alt),
        title: Text(
          "Guide",
          style: FontConstant.myFonts,
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Row(
                children: [
                  Icon(
                    Icons.check,
                    size: 25,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    "Do's",
                    style: FontConstant.Heading,
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Image.asset(ImageConstant.greenEarth),
              Text(
                '''  Reduce:
        Minimize waste generation by opting for products with less packaging.
        Use reusable items such as bags, containers, and water bottles.
        
        Reuse:
        Repurpose items whenever possible to extend their lifespan.
        Donate or sell items that are still in good condition but no longer needed.
        
        Recycle:
        Separate recyclables from general waste.
        Familiarize yourself with local recycling guidelines and follow them.
        Recycle materials like paper, glass, plastic, and metal.
        
        Composting:
        Compost organic waste, such as food scraps and yard waste, to create nutrient-rich soil.
        Learn proper composting techniques to avoid contamination. ''',
                style: FontConstant.Sentence,
                textAlign: TextAlign.start,
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Icon(
                    Icons.check,
                    size: 25,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    "Don't s",
                    style: FontConstant.Heading,
                  ),
                ],
              ),
              SizedBox(
                height: 15,
              ),
              Image.asset(ImageConstant.Donts),
              SizedBox(
                height: 15,
              ),
              Text(
                ''' Illegal Dumping:

Don't dispose of waste in unauthorized areas or engage in illegal dumping practices.

Mixing Recyclables with General Waste:
Avoid throwing recyclable materials in the general waste bin; separate them for recycling.

Burning Waste:
Don't burn waste, as it can release harmful pollutants into the air and contribute to air pollution.

Flushing Hazardous Materials:
Don't flush hazardous materials, pharmaceuticals, or chemicals down the toilet or drain.

Overloading Bins:
Avoid overfilling trash bins, as it can lead to spillage and make waste management more challenging.

Ignoring Local Guidelines:
Don't neglect or ignore local waste management guidelines and regulations.

Disposing of Electronics Improperly:
Don't throw electronic waste in regular bins; instead, dispose of it at designated e-waste collection points.''',
                style: FontConstant.Sentence,
                textAlign: TextAlign.start,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

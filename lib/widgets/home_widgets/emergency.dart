import 'package:flutter/material.dart';
import 'package:women_safety_app/widgets/home_widgets/emergencies/DomesticAbuse.dart';
import 'package:women_safety_app/widgets/home_widgets/emergencies/NCWHelpline.dart';
import 'package:women_safety_app/widgets/home_widgets/emergencies/ShaktiShalini.dart';
import 'package:women_safety_app/widgets/home_widgets/emergencies/WomenHelpline.dart';
import 'package:women_safety_app/widgets/home_widgets/emergencies/policeemergency.dart';

import 'emergencies/AmbulanceEmergency.dart';
import 'emergencies/ArmyEmergency.dart';
import 'emergencies/FirebrigadeEmergency.dart';

class Emergency extends StatelessWidget {
  const Emergency({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 180,
      child: ListView(
        physics: BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        children: [
          WomenHelpline(),
          NCWHelpline(),
          DomesticAbuse(),
          ShaktiShalini(),
          PoliceEmergency(),
          AmbulanceEmergency(),
          FirebrigadeEmergency(),
          ArmyEmergency(),
        ],
      ),
    );
  }
}

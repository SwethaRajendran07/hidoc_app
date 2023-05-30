import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Stack(
          children: [
            Container(
              margin: EdgeInsets.only(right: 227, bottom: 560),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(300),
                ),
                // color: Colors.orange[100],
                gradient: LinearGradient(
                  colors: [Color(0xFFFFCCCC), Color(0xFFFFA07A)], // Specify the gradient colors
                  begin: Alignment.topLeft, // Optional: Set the starting point of the gradient
                  end: Alignment.bottomRight, // Optional: Set the ending point of the gradient
                ),
              ),
            ),
            // ClipPath(
            //   clipper: WaveClipper(),
            Container(
              // height: 200,
              // color: Colors.brown,
              margin: EdgeInsets.only(
                left: 150,
                top: 550,
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(300),
                ),
                // color: Colors.orange[100],
                gradient: LinearGradient(
                  colors: [Color(0xFFFFCCCC), Color(0xFFFFEFD5)], // Specify the gradient colors
                  begin: Alignment.topLeft, // Optional: Set the starting point of the gradient
                  end: Alignment.bottomRight, // Optional: Set the ending point of the gradient
                ),
              ),
            ),
            // ),
            Container(
              width: 200,
              height: 10,
              margin: EdgeInsets.only(
                left: 100,
                right: 100,
                top: 735,
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.black,
              ),
            ),
            Container(
                margin: EdgeInsets.only(
                  bottom: 10,
                ),
                child: Column(
                  children: [
                    Container(
                      margin: EdgeInsets.only(top: 50, left: 50),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(bottomRight: Radius.circular(14), bottomLeft: Radius.circular(14)),
                        color: Colors.cyan[100],
                      ),
                      child: Padding(
                        padding: EdgeInsets.only(left: 30, right: 30, top: 5, bottom: 5),
                        child: Text(
                          "hidoc",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 20),
                      child: Row(
                        children: [
                          Container(
                            margin: EdgeInsets.only(left: 20),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(25),
                              border: Border.all(color: Colors.white, width: 2),
                            ),
                            child: Padding(
                              padding: EdgeInsets.all(8),
                              child: Icon(
                                Icons.house,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 100, top: 2, bottom: 2),
                            child: Text(
                              "ARTICLES",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontWeight: FontWeight.w900,
                                fontSize: 25,
                                color: Colors.black,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                )),
            SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: 600,
                    height: 70,
                    margin: EdgeInsets.only(top: 165, left: 15, bottom: 10, right: 15),
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(15), color: Colors.white, boxShadow: [
                      BoxShadow(
                          color: Colors.grey,
                          offset: Offset(
                            1,
                            1,
                          ),
                          blurRadius: 2,
                          spreadRadius: 0.2
                          // blurRadius: SizeConfig.defaultSize * Dimens.sizePoint8,
                          ),
                    ]),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(top: 20, bottom: 20, left: 120),
                          child: Text(
                            "Critical Care",
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.normal,
                              fontSize: 20,
                            ),
                          ),
                        ),
                        Padding(
                            padding: EdgeInsets.only(top: 15, bottom: 20, right: 20),
                            child: Icon(
                              Icons.arrow_drop_down,
                              size: 40,
                              color: Colors.grey,
                            )),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 10, left: 15, bottom: 10, right: 15),
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(15), color: Colors.white, boxShadow: [
                      BoxShadow(
                        color: Colors.grey,
                        offset: Offset(
                          2,
                          2,
                        ),
                        blurRadius: 2,
                        // blurRadius: SizeConfig.defaultSize * Dimens.sizePoint8,
                      ),
                    ]),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                            width: 600,
                            height: 200,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(topLeft: Radius.circular(15), topRight: Radius.circular(15)),
                              color: Colors.grey[200],
                            ),
                            child: Image.asset(
                              'images/newsPaper.png',
                              width: 60,
                              height: 60,
                              // size: 180,
                              color: Colors.grey[400],
                            )),
                        Padding(
                          padding: EdgeInsets.only(left: 15, right: 15, top: 15, bottom: 5),
                          child: Text(
                            "Decoding the Nexus Criteria for Critical \nCare:A Comprehemsive Guide",
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 15, right: 15, top: 5, bottom: 5),
                          child: Text(
                            "The Nexus Criteria has been used by healthcare professionals to determine whether a patient needs critical care or not.",
                            style: TextStyle(
                              height: 1.5,
                              color: Colors.black,
                              fontWeight: FontWeight.normal,
                              fontSize: 12,
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 15, right: 15, top: 15, bottom: 15),
                          child: Text(
                            "Read full article to earn points",
                            style: TextStyle(
                              decoration: TextDecoration.underline,
                              color: Color(0xFF00CED1),
                              fontStyle: FontStyle.italic,
                              fontWeight: FontWeight.normal,
                              fontSize: 12,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 15, top: 8, bottom: 2),
                    child: Text(
                      "Hidoc Bulletin",
                      textAlign: TextAlign.start,
                      style: TextStyle(
                        fontWeight: FontWeight.w900,
                        fontSize: 25,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 15, right: 280, top: 5, bottom: 5),
                    child: Container(
                      color: Color(0xFF00CED1),
                      height: 6,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 15, right: 15, top: 5, bottom: 5),
                    child: Text(
                      "Vaccine hesitancy:Where are we and where are we \ngoing?",
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 15, right: 15, top: 5, bottom: 5),
                    child: Text(
                      "A justified way to prevent infection explosion associayed with \nlethal damage is timely vaccination .It provides immunization \nbuilds self-immunity & provide overspread health protection.",
                      style: TextStyle(
                        height: 1.5,
                        color: Colors.black,
                        fontWeight: FontWeight.normal,
                        fontSize: 12,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 15, right: 15, top: 5, bottom: 5),
                    child: Text(
                      "Read More",
                      style: TextStyle(
                        color: Color(0xFF00CED1),
                        fontWeight: FontWeight.normal,
                        fontSize: 12,
                        decoration: TextDecoration.underline,
                        decorationColor: Color(0xFF00CED1), // Optional: Set underline color
                        decorationStyle: TextDecorationStyle.solid,
                      ),
                    ),
                  ),

                  ///----------
                  Padding(
                    padding: EdgeInsets.only(left: 15, right: 280, top: 5, bottom: 5),
                    child: Container(
                      color: Color(0xFF00CED1),
                      height: 6,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 15, right: 15, top: 5, bottom: 5),
                    child: Text(
                      "The psychological impact of Chronic Skin Disease",
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 15, right: 15, top: 5, bottom: 5),
                    child: Text(
                      "Through psycho neuro-immuno-endocrine & behavioural \nmechanisms,skin disorders affect the body's psychological \nmakeup,lowers self control,increases distorted thought..",
                      style: TextStyle(
                        color: Colors.black,
                        height: 1.5,
                        fontWeight: FontWeight.normal,
                        fontSize: 12,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 15, right: 15, top: 5, bottom: 5),
                    child: Text(
                      "Read More",
                      style: TextStyle(
                        decoration: TextDecoration.underline,
                        color: Color(0xFF00CED1),
                        fontWeight: FontWeight.normal,
                        fontSize: 12,
                      ),
                    ),
                  ),

                  ///----------
                  Padding(
                    padding: EdgeInsets.only(left: 15, right: 280, top: 5, bottom: 5),
                    child: Container(
                      color: Color(0xFF00CED1),
                      height: 6,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 15, right: 15, top: 5, bottom: 5),
                    child: Text(
                      "Wearable health technology (WHT):Scope & \nFuture directions",
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 15, right: 15, top: 5, bottom: 5),
                    child: Text(
                      "Imbalanced erratic lifestyles,excessive fitness consciousness,  \nhealth complications, & insufficient health -supportive services \navailability are accelerating the usage of WHT.",
                      style: TextStyle(
                        height: 1.5,
                        color: Colors.black,
                        fontWeight: FontWeight.normal,
                        fontSize: 12,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 15, right: 15, top: 5, bottom: 5),
                    child: Text(
                      "Read More",
                      style: TextStyle(
                        decoration: TextDecoration.underline,
                        color: Color(0xFF00CED1),
                        fontWeight: FontWeight.normal,
                        fontSize: 12,
                      ),
                    ),
                  ),

                  ///-------
                  Padding(
                    padding: EdgeInsets.only(left: 15, right: 280, top: 5, bottom: 5),
                    child: Container(
                      color: Color(0xFF00CED1),
                      height: 6,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 15, right: 15, top: 5, bottom: 5),
                    child: Text(
                      "Obesity is a major risk factor for cancer",
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 15, right: 15, top: 5, bottom: 5),
                    child: Text(
                      "In the sedentary era,weight gain is becoming a serious \npreventable risk factor for increased body mass index which \nstrongly correlates with enhanced cancer threat.",
                      style: TextStyle(
                        height: 1.5,
                        color: Colors.black,
                        fontWeight: FontWeight.normal,
                        fontSize: 12,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 15, right: 15, top: 5, bottom: 5),
                    child: Text(
                      "Read More",
                      style: TextStyle(
                        decoration: TextDecoration.underline,
                        color: Color(0xFF00CED1),
                        fontWeight: FontWeight.normal,
                        fontSize: 12,
                      ),
                    ),
                  ),

                  ///----------
                  Padding(
                    padding: EdgeInsets.only(left: 15, right: 280, top: 5, bottom: 5),
                    child: Container(
                      color: Color(0xFF00CED1),
                      height: 6,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 15, right: 15, top: 5, bottom: 5),
                    child: Text(
                      "Nipah virus disease:A rare and intractable disease",
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 15, right: 15, top: 5, bottom: 5),
                    child: Text(
                      "Nipah virus (NiV) is an RNA virus that belongs to the class of \nParamyxoviridae and Henipavirus genus,which also consists of the \nHendra virus(HeV) as well as the Cedar virus .Since its 1998 \ndiscovery in Malaysia,the NiV virus has been linked to multiple \nepidemics.",
                      style: TextStyle(
                        height: 1.5,
                        color: Colors.black,
                        fontWeight: FontWeight.normal,
                        fontSize: 12,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 15, right: 15, top: 5, bottom: 5),
                    child: Text(
                      "Read More",
                      style: TextStyle(
                        decoration: TextDecoration.underline,
                        color: Color(0xFF00CED1),
                        fontWeight: FontWeight.normal,
                        fontSize: 12,
                      ),
                    ),
                  ),

                  ///--------------
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.teal[50],
                    ),
                    margin: EdgeInsets.all(15),
                    padding: EdgeInsets.only(left: 20, right: 10, top: 10, bottom: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(top: 10, bottom: 20),
                          child: Text(
                            "Trending Hidoc Bulletin",
                            textAlign: TextAlign.start,
                            style: TextStyle(
                              fontWeight: FontWeight.w900,
                              fontSize: 25,
                              color: Colors.black,
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 5, bottom: 5),
                          child: Text(
                            "Fluid Infusion in Postoperative TBI Patients",
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 5, bottom: 5),
                          child: Text(
                            "Traumatic brain injuries are noticed in patients as a \nsevere side effect of surgeries.It can occur because of \nthe events like incisions,retraction,thernal damage,...",
                            style: TextStyle(
                              height: 1.5,
                              color: Colors.black,
                              fontWeight: FontWeight.normal,
                              fontSize: 12,
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 5, bottom: 5),
                          child: Text(
                            "Read More",
                            style: TextStyle(
                              decoration: TextDecoration.underline,
                              color: Color(0xFF00CED1),
                              fontWeight: FontWeight.normal,
                              fontSize: 12,
                            ),
                          ),
                        ),

                        ///--------
                        Padding(
                          padding: EdgeInsets.only(top: 5, bottom: 5),
                          child: Text(
                            "Introduction to pheochromocytoma diagnosis \nand treatment",
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 5, bottom: 5),
                          child: Text(
                            "Pheochromocytoma is a catecholamine -producing \ntumor of the adrenergic system or the chromaffin cells \namong which approximately 90% are adrenomedullary,...",
                            style: TextStyle(
                              height: 1.5,
                              color: Colors.black,
                              fontWeight: FontWeight.normal,
                              fontSize: 12,
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 5, bottom: 5),
                          child: Text(
                            "Read More",
                            style: TextStyle(
                              decoration: TextDecoration.underline,
                              color: Color(0xFF00CED1),
                              fontWeight: FontWeight.normal,
                              fontSize: 12,
                            ),
                          ),
                        ),

                        ///--------
                        Padding(
                          padding: EdgeInsets.only(top: 5, bottom: 5),
                          child: Text(
                            "Treating Typhoid fever ",
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 5, bottom: 5),
                          child: Text(
                            " Typhoid fever can cause life-threatening conditions in  \npatients,it require proper diagnosis and treatment at \nthe right time.The causative organism of typhoid is,... ",
                            style: TextStyle(
                              height: 1.5,
                              color: Colors.black,
                              fontWeight: FontWeight.normal,
                              fontSize: 12,
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 5, bottom: 5),
                          child: Text(
                            "Read More",
                            style: TextStyle(
                              decoration: TextDecoration.underline,
                              color: Color(0xFF00CED1),
                              fontWeight: FontWeight.normal,
                              fontSize: 12,
                            ),
                          ),
                        ),

                        ///-------
                        Padding(
                          padding: EdgeInsets.only(top: 5, bottom: 5),
                          child: Text(
                            "Does Isotonic Excercise Impacts Sperm \nVitality?",
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 5, bottom: 5),
                          child: Text(
                            "Sperm health is a crucial factor that is required to be \nmaintained in men as it is related to the tendency of \ngetting pregnant easily and having a healthy child.A lot...",
                            style: TextStyle(
                              height: 1.5,
                              color: Colors.black,
                              fontWeight: FontWeight.normal,
                              fontSize: 12,
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 5, bottom: 5),
                          child: Text(
                            "Read More",
                            style: TextStyle(
                              decoration: TextDecoration.underline,
                              color: Color(0xFF00CED1),
                              fontWeight: FontWeight.normal,
                              fontSize: 12,
                            ),
                          ),
                        ),

                        ///--------
                        Padding(
                          padding: EdgeInsets.only(top: 5, bottom: 5),
                          child: Text(
                            "MDR-Tuberculosis Treatment ",
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 5, bottom: 5),
                          child: Text(
                            "Tuberculosis needs to be properly treated in order to avoid  \nfatal outcomes.The most important part of the treatment is \nto understand the type of TB as in case of drug resistant \nTB,the treatment approaches need to be different.",
                            style: TextStyle(
                              height: 1.5,
                              color: Colors.black,
                              fontWeight: FontWeight.normal,
                              fontSize: 12,
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 5, bottom: 5),
                          child: Text(
                            "Read More",
                            style: TextStyle(
                              decoration: TextDecoration.underline,
                              color: Color(0xFF00CED1),
                              fontWeight: FontWeight.normal,
                              fontSize: 12,
                            ),
                          ),
                        ),

                        ///--------
                        Padding(
                          padding: EdgeInsets.only(top: 5, bottom: 5),
                          child: Text(
                            "Combination of Radiation theraphy and\nHormone theraphy for Prostate cancer(PCa)",
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 5, bottom: 5),
                          child: Text(
                            "Prostate cancer (PCa), one of the current world's major health \nconcerns has the highest incidence of any type of cancer.It is \nthe 2nd most common type of cancer and the 5th most \nfrequent causeof cancer-related death in men worldwide.",
                            style: TextStyle(
                              height: 1.5,
                              color: Colors.black,
                              fontWeight: FontWeight.normal,
                              fontSize: 12,
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 5, bottom: 5),
                          child: Text(
                            "Read More",
                            style: TextStyle(
                              decoration: TextDecoration.underline,
                              color: Color(0xFF00CED1),
                              fontWeight: FontWeight.normal,
                              fontSize: 12,
                            ),
                          ),
                        ),

                        ///--------
                      ],
                    ),
                  ),

                  ///----------
                  Container(
                    margin: EdgeInsets.only(top: 30, left: 60, bottom: 30),
                    color: Colors.orange,
                    child: Padding(
                      padding: EdgeInsets.only(left: 40, right: 40, top: 10, bottom: 10),
                      child: Text(
                        "Read More Bulletins",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.normal,
                          fontSize: 20,
                        ),
                      ),
                    ),
                  ),

                  ///---------
                  Container(
                    margin: EdgeInsets.only(top: 10, left: 15, right: 15, bottom: 15),
                    decoration:
                        BoxDecoration(borderRadius: BorderRadius.all(Radius.zero), border: Border.all(color: Colors.grey)),
                    child: Padding(
                      padding: EdgeInsets.only(left: 25, right: 25, top: 5, bottom: 10),
                      child: Column(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(
                              top: 8,
                              bottom: 8,
                            ),
                            child: Text(
                              "Latest Articles",
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 3, top: 4, bottom: 4, right: 3),
                            child: Divider(
                              thickness: 1,
                              color: Colors.grey,
                            ),
                          ),
                          Text(
                            "Understanding the importance of Sirs Criteria in Modern HealthCare",
                            style: TextStyle(
                              color: Colors.black,
                              height: 1.5,
                              fontWeight: FontWeight.normal,
                              fontSize: 16,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 3, top: 4, bottom: 4, right: 3),
                            child: Divider(
                              thickness: 1,
                              color: Colors.grey,
                            ),
                          ),
                          Text(
                            "The Importance of Understanding Calcium \nGluconate Hyperkalemia: A Comprehensive \nGuide",
                            style: TextStyle(
                              color: Colors.black,
                              height: 1.5,
                              fontWeight: FontWeight.normal,
                              fontSize: 16,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 3, top: 4, bottom: 4, right: 3),
                            child: Divider(
                              thickness: 1,
                              color: Colors.grey,
                            ),
                          ),
                          Text(
                            "Everything You Need to know about Using a \nBag Valve Mask",
                            style: TextStyle(
                              color: Colors.black,
                              height: 1.5,
                              fontWeight: FontWeight.normal,
                              fontSize: 16,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 3, top: 4, bottom: 4, right: 3),
                            child: Divider(
                              thickness: 1,
                              color: Colors.grey,
                            ),
                          ),
                          Text(
                            "The Importance of Targeted Temperature \nManagement : Understanding the Benefits \nand Risks",
                            style: TextStyle(
                              color: Colors.black,
                              height: 1.5,
                              fontWeight: FontWeight.normal,
                              fontSize: 16,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 3, top: 4, bottom: 4, right: 3),
                            child: Divider(
                              thickness: 1,
                              color: Colors.grey,
                            ),
                          ),
                          Text(
                            "Understanding Chylous Ascites Symptoms,  \nCauses and Treatment Options",
                            style: TextStyle(
                              color: Colors.black,
                              height: 1.5,
                              fontWeight: FontWeight.normal,
                              fontSize: 16,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 10, left: 15, right: 15, bottom: 15),
                    decoration:
                        BoxDecoration(borderRadius: BorderRadius.all(Radius.zero), border: Border.all(color: Colors.grey)),
                    child: Padding(
                      padding: EdgeInsets.only(left: 25, right: 25, top: 5, bottom: 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(top: 8, bottom: 14, left: 80),
                            child: Text(
                              "Trending Articles",
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 5),
                            child: Divider(
                              height: 2,
                              color: Colors.black,
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(bottom: 15),
                            width: 600,
                            height: 160,
                            decoration: BoxDecoration(
                              color: Colors.grey[200],
                            ),
                            child: Padding(
                                padding: EdgeInsets.only(top: 8, bottom: 8),
                                child: Image.asset(
                                  'images/newsPaper.png',
                                  width: 40,
                                  height: 40,
                                  // size: 180,
                                  color: Colors.grey[500],
                                )),
                          ),
                          Text(
                            "Polyposis Syndrome : Causes, Symptoms , and  Treatment Options ",
                            style: TextStyle(
                              color: Colors.black,
                              height: 1.5,
                              fontWeight: FontWeight.normal,
                              fontSize: 16,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 3, top: 4, bottom: 4, right: 3),
                            child: Divider(
                              thickness: 1,
                              color: Colors.grey,
                            ),
                          ),
                          Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  width: 70,
                                  height: 50,
                                  decoration: BoxDecoration(
                                    color: Colors.grey[200],
                                  ),
                                  child: Padding(
                                      padding: EdgeInsets.only(top: 8, bottom: 8),
                                      child: Image.asset(
                                        'images/newsPaper.png',
                                        width: 10,
                                        height: 10,
                                        // size: 180,
                                        color: Colors.grey[500],
                                      )),
                                ),
                                Text(
                                  "Navigating The Right Remeron",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.normal,
                                    fontSize: 16,
                                  ),
                                ),
                              ])
                        ],
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 10, left: 15, right: 15, bottom: 15),
                    decoration:
                        BoxDecoration(borderRadius: BorderRadius.all(Radius.zero), border: Border.all(color: Colors.grey)),
                    child: Padding(
                      padding: EdgeInsets.only(left: 25, right: 25, top: 5, bottom: 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(top: 8, bottom: 12, left: 50),
                            child: Text(
                              "Explore more in Articles",
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 3, top: 4, bottom: 4, right: 3),
                            child: Divider(
                              thickness: 1,
                              color: Colors.grey,
                            ),
                          ),
                          Text(
                            "The future of intensive care: delirium should no longer be an issue ",
                            style: TextStyle(
                              color: Colors.black,
                              height: 1.5,
                              fontWeight: FontWeight.normal,
                              fontSize: 16,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 3, top: 4, bottom: 4, right: 3),
                            child: Divider(
                              thickness: 1,
                              color: Colors.grey,
                            ),
                          ),
                          Text(
                            "Emergence of New Omicron subvariants XBB/XBB.1.5 and BF.7",
                            style: TextStyle(
                              color: Colors.black,
                              height: 1.5,
                              fontWeight: FontWeight.normal,
                              fontSize: 16,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),

                  ///--------------

                  Container(
                    width: 400,
                    margin: EdgeInsets.only(top: 30, left: 15, bottom: 30, right: 15),
                    color: Colors.orange,
                    child: Padding(
                      padding: EdgeInsets.only(left: 100, right: 100, top: 10, bottom: 10),
                      child: Text(
                        "Explore Hidoc Dr.",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.normal,
                          fontSize: 20,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 70, right: 40, top: 10, bottom: 20),
                    child: Text(
                      "What's more on Hidoc Dr.",
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 24,
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 10, left: 15, right: 15, bottom: 15),
                    color: Colors.grey[200],
                    child: Padding(
                      padding: EdgeInsets.only(
                        top: 5,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(left: 25, right: 25, top: 10, bottom: 10),
                            child: Text(
                              "News ",
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 22,
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 25, right: 25, top: 10, bottom: 10),
                            child: Text(
                              "Experts addressing burnout discuss the importance not only of self-care,but also of improving workplace conditions. ",
                              style: TextStyle(
                                height: 1.5,
                                color: Colors.grey[600],
                                fontWeight: FontWeight.normal,
                                fontSize: 14,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 90,
                          ),
                          Padding(
                              padding: EdgeInsets.only(
                                top: 8,
                              ),
                              child: Image.asset(
                                'images/women.png',
                                height: 240,
                                width: 920,
                                // size: 180,
                                // color: Colors.grey[500],
                              )),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 10, left: 15, right: 15, bottom: 15),
                    decoration:
                        BoxDecoration(borderRadius: BorderRadius.all(Radius.zero), border: Border.all(color: Colors.grey)),
                    child: Padding(
                      padding: EdgeInsets.only(left: 5, right: 5, top: 15, bottom: 15),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Container(
                                decoration: BoxDecoration(borderRadius: BorderRadius.circular(20), color: Colors.lightBlue[50]),
                                child: Padding(
                                  padding: EdgeInsets.all(6.0),
                                  child: Image.asset(
                                    'images/champion.png',
                                    width: 25,
                                    height: 25,
                                    color: Colors.lightBlueAccent,
                                  ),
                                ),
                              ),
                              Text(
                                "Quizzes:",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18,
                                ),
                              ),
                              Text(
                                "Participate & Win Exciting Prizes ",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.normal,
                                  fontSize: 14,
                                ),
                              ),
                            ],
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 4, top: 4, bottom: 4, right: 3),
                            child: Divider(
                              color: Colors.grey,
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Container(
                                decoration: BoxDecoration(borderRadius: BorderRadius.circular(20), color: Colors.lightBlue[50]),
                                child: Padding(
                                  padding: EdgeInsets.all(8.0),
                                  child: Icon(
                                    Icons.calculate_outlined,
                                    color: Colors.lightBlueAccent,
                                  ),
                                ),
                              ),
                              Text(
                                "Medical\nCalculators:",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18,
                                ),
                              ),
                              Text(
                                "Get Access to 800+ Evidence\nBased Calculators",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.normal,
                                  fontSize: 14,
                                ),
                              ),
                            ],
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 4, top: 4, right: 3),
                            child: Divider(
                              color: Colors.grey,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 20, left: 15, bottom: 60, right: 15),
                    color: Colors.orange[100],
                    child: Padding(
                      padding: EdgeInsets.only(left: 20, right: 20, top: 20, bottom: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            "Social Network for doctors -\nA Special feature on Hidoc Dr.",
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                            ),
                          ),
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.orange[400],
                            ),
                            child: Padding(
                              padding: EdgeInsets.only(left: 20, right: 20, top: 10, bottom: 10),
                              child: Text(
                                "Visit",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// class WaveClipper extends CustomClipper<Path> {
//   @override
//   Path getClip(Size size) {
//     debugPrint(size.width.toString());
//     var path = new Path();
//     path.lineTo(0, size.height);
//     var firstStart = Offset(size.width / 5, size.height);
//     var firstEnd = Offset(size.width / 2.25, size.height - 50.0);
//     path.quadraticBezierTo(firstStart.dx, firstStart.dy, firstEnd.dx, firstEnd.dy);
//
//     var secondStart = Offset(size.width - (size.width / 3.24), size.height - 105);
//     var secondEnd = Offset(size.width, size.height - 10);
//     path.quadraticBezierTo(secondStart.dx, secondStart.dy, secondEnd.dx, secondEnd.dy);
//     path.lineTo(size.width, 0);
//     path.close();
//     return path;
//   }
// }

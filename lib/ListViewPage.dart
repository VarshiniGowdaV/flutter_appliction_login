import 'package:flutter/material.dart';

class Listviewpage extends StatefulWidget {
  const Listviewpage({super.key});

  @override
  State<Listviewpage> createState() => _ListviewpageState();
}

class _ListviewpageState extends State<Listviewpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("ListViewPage"),
      ),
      body:
          ListView(
            padding: EdgeInsets.all(20),
            children: <Widget>[
              CircleAvatar(
                maxRadius: 50,
                backgroundColor: Colors.black,
                child:Icon(Icons.person,color:Colors.white,size: 50),
                ),
                const SizedBox(height:20),
                Center(
                  child:Text('CHANGMA SHRISTI',
                  style: TextStyle(fontSize: 50,
                  ),
                  ),
                  ),
                  Text(
          
                    """SOFTWARE DEVELOPMENT, EMBEDDED SOFTWARE, CLOUD BASED SOLUTIONS, IT CONSULTANCY, MOBILE DESKTOP AND BROWSER BASED APPLICATIONS. TEST SOFTWARE. AI BASED APPLICATIONS. UI/UX DESIGN SERVICES.TO BE A LEADER IN DELIVERING CUTTING-EDGE TECHNOLOGY SOUTIONS BY EMBRACING BEST PRACTICES  AND MAINTAININGA RELENTLESS FOCUS ON USER-CENTRIC INNOVATION Our mission is to design and develop high-impact technology-driven solutions that empower users and drive meaningful outcomes.
                 By applying industry best practices, we ensure our products are robust, scalable, and secure Smartx infinity Our flagship (MVP) product ( Trade marked) , SmartX Infinity is a unique EdTech socio-networking AI based platform that turns learning into a measurable, trustworthy journey.At the heart of everything we do is a simple philosophy: Good Code, True Data, Real Impact. We believe that clean, maintainable code is the foundation of reliable software. 
                 We harness the power of accurate,meaningful data to inform every decision. And most importantly, we focus on delivering real, measurable impact for our clients- whether it’s boosting efficiency, driving growth, or enabling smarter experiences. Our work doesn’t just function - it performs, scales, and makes a difference Our key team members have led the successful certification of one of the country’s most prestigious Flight Control System (FCS) software programs with CEMILAC. 
                 This project is proudly recognized as the first fighter-class Flight Control System in India to achieve DO-178C Level A certification We believe safety is not a feature to be added later, it is a disciplined journey. Every requirement, design decision, software architecture and line of code is crafted using validated data and rigorous engineering practices """,
                    textAlign: TextAlign.left,   
                    style: TextStyle(
                      height:2,
                    ),
                    ),                  
                ],
          ),
          
        
      

    );    
  }
}

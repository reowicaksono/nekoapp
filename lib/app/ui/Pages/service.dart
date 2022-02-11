import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:kucing_app/app/repository/Model/Services/serviceModel.dart';
import 'package:kucing_app/app/ui/Pages/home.dart';
import 'package:kucing_app/app/utils/theme.dart';

class Service extends StatefulWidget {
  const Service({Key? key}) : super(key: key);

  @override
  _ServiceState createState() => _ServiceState();
}

class _ServiceState extends State<Service> {
  List<ServiceModel>? services = [
    ServiceModel('Vertenary', 'assets/americancat.png'),
    ServiceModel('Cat Breeds', 'assets/americancat.png'),
    ServiceModel('Cat Disease', 'assets/americancat.png'),
    ServiceModel('Food', 'assets/americancat.png'),
    ServiceModel('Drink', 'assets/americancat.png'),
    ServiceModel('Dummy', 'assets/americancat.png'),
  ];

  int selectedService = -1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: WarnaOren,
        floatingActionButton: selectedService >= 0
            ? FloatingActionButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Home(),
                    ),
                  );
                },
                child: Icon(
                  Icons.arrow_forward_ios,
                  size: 20,
                ),
                backgroundColor: Colors.blue,
              )
            : null,
        body: NestedScrollView(
          headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
            return <Widget>[
              SliverToBoxAdapter(
                child: SafeArea(
                  child: Stack(
                    children: [
                      FadeIn(
                        duration: Duration(milliseconds: 1000),
                        delay: Duration(milliseconds: 500),
                        child: Padding(
                          padding: EdgeInsets.only(
                              top: edge * 4, right: 20.0, left: 20.0),
                          child: Text(
                            'Which service \ndo you need?',
                            style: TextStyle(
                              fontSize: 40,
                              color: WarnaHitam,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Padding(
                          padding: EdgeInsets.only(left: edge, top: 18),
                          child: Container(
                              height: 50,
                              width: 50,
                              child: Image(
                                image: AssetImage("assets/btn_back.png"),
                                fit: BoxFit.cover,
                              )),
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ];
          },
          body: FadeInUpBig(
            duration: Duration(milliseconds: 1000),
            delay: Duration(milliseconds: 500),
            child: Padding(
              padding: EdgeInsets.all(20.0),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Expanded(
                      child: GridView.builder(
                          gridDelegate:
                              SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            childAspectRatio: 1.0,
                            crossAxisSpacing: 20.0,
                            mainAxisSpacing: 20.0,
                          ),
                          physics: NeverScrollableScrollPhysics(),
                          itemCount: services?.length,
                          itemBuilder: (BuildContext context, int index) {
                            return serviceContainer(
                                image: services![index].url,
                                name: services![index].nama,
                                index: index);
                          }),
                    ),
                  ]),
            ),
          ),
        ));
  }

  serviceContainer({String image = '', String name = '', int index = 0}) {
    return GestureDetector(
      onTap: () {
        setState(() {
          if (selectedService == index)
            selectedService = -1;
          else
            selectedService = index;
        });
      },
      child: AnimatedContainer(
        duration: Duration(milliseconds: 300),
        padding: EdgeInsets.all(10.0),
        decoration: BoxDecoration(
          color: selectedService == index
              ? Colors.blue.shade50
              : Colors.grey.shade100,
          border: Border.all(
            color: selectedService == index
                ? Colors.blue
                : Colors.blue.withOpacity(0),
            width: 2.0,
          ),
          borderRadius: BorderRadius.circular(20.0),
        ),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Image.asset(
                image,
                height: 80,
                fit: BoxFit.cover,
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                name,
                style: TextStyle(fontSize: 20),
              )
            ]),
      ),
    );
  }
}

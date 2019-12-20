import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:vikash/pages/VillagePages/VillagePageA.dart';
import 'package:vikash/pages/VillagePages/VillagePageB.dart';

import 'package:vikash/resources/coffee_model.dart';
import 'package:vikash/resources/coffee_model.dart';

class LocationPageofJobrecruiter extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<LocationPageofJobrecruiter> {
  GoogleMapController _controller;

  List<Marker> allMarkers = [];

  PageController _pageController;

  int prevPage;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    coffeeShops.forEach((element) {
      allMarkers.add(Marker(
          markerId: MarkerId(element.shopName),
          draggable: false,
          infoWindow:
              InfoWindow(title: element.shopName, snippet: element.address),
          position: element.locationCoords));
    });
    _pageController = PageController(initialPage: 1, viewportFraction: 0.8)
      ..addListener(_onScroll);
  }

  void _onScroll() {
    if (_pageController.page.toInt() != prevPage) {
      prevPage = _pageController.page.toInt();
      moveCamera();
    }
  }

  _coffeeShopList(index) {
    return AnimatedBuilder(
      animation: _pageController,
      builder: (BuildContext context, Widget widget) {
        double value = 1;
        if (_pageController.position.haveDimensions) {
          value = _pageController.page - index;
          value = (1 - (value.abs() * 0.3) + 0.06).clamp(0.0, 1.0);
        }
        return Center(
          child: SizedBox(
            height: Curves.easeInOut.transform(value) * 125.0,
            width: Curves.easeInOut.transform(value) * 350.0,
            child: widget,
          ),
        );
      },
      child: InkWell(
          onTap: () {
            // moveCamera();
          },
          child: Stack(children: [
            Center(
                child: InkWell(
                                  child: Container(
                      margin: EdgeInsets.symmetric(
                        horizontal: 10.0,
                        vertical: 20.0,
                      ),
                      height: 125.0,
                      width: 275.0,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(40.0),
                          boxShadow: [
                            BoxShadow(
                                color: Colors.black54,
                                offset: Offset(2.0, 4.0),
                                blurRadius: 20.0,
                                spreadRadius: 1),
                          ]),
                      child: Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(40.0),
                                color: Colors.white),
                            child: Row(children: [
                              InkWell(onTap: (){Navigator.of(context).push(MaterialPageRoute(builder: (context)=>VillagePageA()));},
                                                            child: Container(
                                        height: 90.0,
                                        width: 90.0,
                                        decoration: BoxDecoration(
                                            borderRadius:
                      BorderRadius.all(Radius.circular(40.0)),
                                            image: DecorationImage(
                      image: NetworkImage(
                          coffeeShops[index].thumbNail),
                      fit: BoxFit.cover))),
                              ),
                              SizedBox(width: 5.0),
                              Column(
                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      coffeeShops[index].shopName,
                                      style: TextStyle(
                                          fontSize: 12.5,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Text(
                                      coffeeShops[index].address,
                                      style: TextStyle(
                                          fontSize: 12.0,
                                          fontWeight: FontWeight.w600),
                                    ),
                                    Container(
                                      width: 170.0,
                                      child: Text(
                                        coffeeShops[index].description,
                                        style: TextStyle(
                      fontSize: 11.0,
                      fontWeight: FontWeight.w300),
                                      ),
                                    )
                                  ])
                            ]))),
                ))
          ])),
    );
  }
  void mapCreated(controller) {
      setState(() {
        _controller = controller;
        changeMapMode();
      });
    }
     moveCamera() {
      _controller.animateCamera(CameraUpdate.newCameraPosition(CameraPosition(
          target: coffeeShops[_pageController.page.toInt()].locationCoords,
          zoom: 14.0,
          bearing: 45.0,
          tilt: 45.0)));
    }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: <Widget>[
        Container(
          height: MediaQuery.of(context).size.height - 50.0,
          width: MediaQuery.of(context).size.width,
          child: GoogleMap(
            initialCameraPosition:
                CameraPosition(target: LatLng(26.1445, 91.7362), zoom: 12.0),
            markers: Set.from(allMarkers),
            onMapCreated: mapCreated,
          ),
        ),
        Positioned(
          bottom: 20.0,
          child: Container(
            height: 200.0,
            width: MediaQuery.of(context).size.width,
            child: PageView.builder(
              controller: _pageController,
              itemCount: coffeeShops.length,
              itemBuilder: (BuildContext context, int index) {
                return _coffeeShopList(index);
              },
            ),
          ),
        )
      ],
    ));

    

   
  }

  changeMapMode() {
    getJsonFile('assets/StyleMap.json').then(setMapStyle);
  }

  Future<String> getJsonFile(String path) async {
    return await rootBundle.loadString(path);
  }

  void setMapStyle(String mapStyle) {
    _controller.setMapStyle(mapStyle);
  }

 villagePage(index){
  if(_coffeeShopList(0)) 
  return (Navigator.push(context, MaterialPageRoute(builder: (context)=>VillagePageA())));
  else if (_coffeeShopList(1))
    return (Navigator.push(context, MaterialPageRoute(builder: (context)=>VillagePageB())));
}



}

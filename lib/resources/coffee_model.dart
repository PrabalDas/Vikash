import 'package:google_maps_flutter/google_maps_flutter.dart';

class Coffee {
  String shopName;
  String address;
  String description;
  String thumbNail;
  LatLng locationCoords;

  Coffee(
      {this.shopName,
      this.address,
      this.description,
      this.thumbNail,
      this.locationCoords});
}

final List<Coffee> coffeeShops = [
  Coffee(
      shopName: 'Chilarai Farm',
      address: 'Chilarai nagar 32',
      description:
          'Farm house chain offering house-roasted direct-trade coffee,',
      locationCoords: LatLng(26.1651,91.7648),
      thumbNail: 'https://images.unsplash.com/photo-1528826542659-27db5adea13c?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1759&q=80'
      ),
  Coffee(
      shopName: 'Bhaskar Farm',
      address: ' Bhaskar Nagar 781032',
      description:
          'Plotting area available for irrigation',
      locationCoords: LatLng(26.1774, 91.7788),
      thumbNail: 'https://images.unsplash.com/photo-1508348837373-76b3f1a97451?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1936&q=80'
      ),
  Coffee(
      shopName: 'Bisnupur Farm',
      address: 'Bishnupur Nagar 781043',
      description:
          'Small spot draws serious grains with wide selection of brews & baked goods.',
      locationCoords: LatLng(23.0672, 87.3215),
      thumbNail: 'https://images.unsplash.com/uploads/1411451353252e1ebf14d/f65e226b?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1028&q=80'
      ),
  Coffee(
      shopName: 'Hatigaon farm',
      address: 'Hatigaon Nagar',
      description:
          'Wide area Of land with multiple textile industry.',
      locationCoords: LatLng(26.1291, 91.7794),
      thumbNail: 'https://images.livemint.com/rf/Image-621x414/LiveMint/Period1/2014/08/30/Photos/thasarakkerala--621x414.jpg'
      ),
  Coffee(
      shopName: 'Nogaon Farm',
      address: 'Rupnagar Path 781062',
      description:
          'Repair work for the pipes and similar roadworks',
      locationCoords: LatLng(26.3480 , 92.6838),
      thumbNail: 'https://images.unsplash.com/photo-1470181002772-82478d164015?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1050&q=80'
      )
];

import 'package:flutter/material.dart';

class ProductPage extends StatefulWidget {
  @override
  _ProductPageState createState() => _ProductPageState();
}

class _ProductPageState extends State<ProductPage> {
  bool isWatchFavorite = false;
  bool isShoesFavorite = false;
  bool isLgTvFavorite = false;
  bool isAirPodsFavorite = false;
  bool isHoddiFavorite = false;
  bool isJacketFavorite = false;
  bool isTshirtFavorite = false;
  bool isTroutherFavorite = false;
  bool isPlusTouchedWatch = false;
  bool isPlusTouchedShoes = false;
  bool isPlusTouchedLgTv = false;
  bool isPlusTouchedAirPods = false;
  bool isplusTouchedHoddi = false;
  bool isplusTouchedJacket = false;
  bool isplusTouchedTshirt = false;
  bool isplusTouchedTrouther = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
            // Handle back button pres
          },
        ),
        title: Text('Products'),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.all(16.0),
                child: Row(
                  children: [
                    Expanded(
                      child: Column(
                        children: [
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                isWatchFavorite = !isWatchFavorite;
                              });
                            },
                            child: Container(
                              width: 100,
                              height: 100,
                              child: Stack(
                                alignment: Alignment.topRight,
                                children: [
                                  Image.asset(
                                    'assets/wach.png',
                                    fit: BoxFit.cover,
                                  ),
                                  Icon(
                                    isWatchFavorite
                                        ? Icons.favorite
                                        : Icons.favorite_border,
                                    color: isWatchFavorite
                                        ? Colors.red
                                        : Colors.white,
                                  ),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(height: 10),
                          Text('Watch', style: TextStyle(fontSize: 20)),
                          SizedBox(height: 10),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text('\$40',
                                  style: TextStyle(color: Colors.blue)),
                              SizedBox(width: 5),
                              GestureDetector(
                                onTap: () {
                                  setState(() {
                                    isPlusTouchedWatch = !isPlusTouchedWatch;
                                  });
                                },
                                child: CircleAvatar(
                                  backgroundColor: isPlusTouchedWatch
                                      ? Colors.blue
                                      : Colors.transparent,
                                  radius: 12,
                                  child: Icon(
                                    Icons.add,
                                    color: isPlusTouchedWatch
                                        ? Colors.white
                                        : Colors.blue,
                                    size: 16,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    SizedBox(width: 20),
                    Expanded(
                      child: Column(
                        children: [
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                isShoesFavorite = !isShoesFavorite;
                              });
                            },
                            child: Container(
                              width: 100,
                              height: 100,
                              child: Stack(
                                alignment: Alignment.topRight,
                                children: [
                                  Image.asset(
                                    'assets/shoes.png',
                                    fit: BoxFit.cover,
                                  ),
                                  Icon(
                                    isShoesFavorite
                                        ? Icons.favorite
                                        : Icons.favorite_border,
                                    color: isShoesFavorite
                                        ? Colors.red
                                        : Colors.white,
                                  ),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(height: 10),
                          Text('Shoes', style: TextStyle(fontSize: 20)),
                          SizedBox(height: 10),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text('\$430',
                                  style: TextStyle(color: Colors.blue)),
                              SizedBox(width: 5),
                              GestureDetector(
                                onTap: () {
                                  setState(() {
                                    isPlusTouchedShoes = !isPlusTouchedShoes;
                                  });
                                },
                                child: CircleAvatar(
                                  backgroundColor: isPlusTouchedShoes
                                      ? Colors.blue
                                      : Colors.transparent,
                                  radius: 12,
                                  child: Icon(
                                    Icons.add,
                                    color: isPlusTouchedShoes
                                        ? Colors.white
                                        : Colors.blue,
                                    size: 16,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.all(16.0),
                child: Row(
                  children: [
                    Expanded(
                      child: Column(
                        children: [
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                isLgTvFavorite = !isLgTvFavorite;
                              });
                            },
                            child: Container(
                              width: 100,
                              height: 100,
                              child: Stack(
                                alignment: Alignment.topRight,
                                children: [
                                  Image.asset(
                                    'assets/tv.png',
                                  ),
                                  Icon(
                                    isLgTvFavorite
                                        ? Icons.favorite
                                        : Icons.favorite_border,
                                    color: isLgTvFavorite
                                        ? Colors.red
                                        : Colors.white,
                                  ),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(height: 10),
                          Text('LG TV', style: TextStyle(fontSize: 20)),
                          SizedBox(height: 10),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text('\$1000',
                                  style: TextStyle(color: Colors.blue)),
                              SizedBox(width: 5),
                              GestureDetector(
                                onTap: () {
                                  setState(() {
                                    isPlusTouchedLgTv = !isPlusTouchedLgTv;
                                  });
                                },
                                child: CircleAvatar(
                                  backgroundColor: isPlusTouchedLgTv
                                      ? Colors.blue
                                      : Colors.transparent,
                                  radius: 12,
                                  child: Icon(
                                    Icons.add,
                                    color: isPlusTouchedLgTv
                                        ? Colors.white
                                        : Colors.blue,
                                    size: 16,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    SizedBox(width: 20),
                    Expanded(
                      child: Column(
                        children: [
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                isAirPodsFavorite = !isAirPodsFavorite;
                              });
                            },
                            child: Container(
                              width: 100,
                              height: 100,
                              child: Stack(
                                alignment: Alignment.topRight,
                                children: [
                                  Image.asset(
                                    'assets/airpod.png',
                                  ),
                                  Icon(
                                    isAirPodsFavorite
                                        ? Icons.favorite
                                        : Icons.favorite_border,
                                    color: isAirPodsFavorite
                                        ? Colors.red
                                        : Colors.white,
                                  ),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(height: 10),
                          Text('AirPods', style: TextStyle(fontSize: 20)),
                          SizedBox(height: 10),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text('\$200',
                                  style: TextStyle(color: Colors.blue)),
                              SizedBox(width: 5),
                              GestureDetector(
                                onTap: () {
                                  setState(() {
                                    isPlusTouchedAirPods =
                                        !isPlusTouchedAirPods;
                                  });
                                },
                                child: CircleAvatar(
                                  backgroundColor: isPlusTouchedAirPods
                                      ? Colors.blue
                                      : Colors.transparent,
                                  radius: 12,
                                  child: Icon(
                                    Icons.add,
                                    color: isPlusTouchedAirPods
                                        ? Colors.white
                                        : Colors.blue,
                                    size: 16,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.all(16.0),
                child: Row(
                  children: [
                    Expanded(
                      child: Column(
                        children: [
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                isHoddiFavorite = !isHoddiFavorite;
                              });
                            },
                            child: Container(
                              width: 100,
                              height: 100,
                              child: Stack(
                                alignment: Alignment.topRight,
                                children: [
                                  Image.asset(
                                    'assets/hodi.png',
                                  ),
                                  Icon(
                                    isHoddiFavorite
                                        ? Icons.favorite
                                        : Icons.favorite_border,
                                    color: isHoddiFavorite
                                        ? Colors.red
                                        : Colors.white,
                                  ),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(height: 10),
                          Text('Hoddii', style: TextStyle(fontSize: 20)),
                          SizedBox(height: 10),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text('\$1000',
                                  style: TextStyle(color: Colors.blue)),
                              SizedBox(width: 5),
                              GestureDetector(
                                onTap: () {
                                  setState(() {
                                    isplusTouchedHoddi = !isplusTouchedHoddi;
                                  });
                                },
                                child: CircleAvatar(
                                  backgroundColor: isplusTouchedHoddi
                                      ? Colors.blue
                                      : Colors.transparent,
                                  radius: 12,
                                  child: Icon(
                                    Icons.add,
                                    color: isplusTouchedHoddi
                                        ? Colors.white
                                        : Colors.blue,
                                    size: 16,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    SizedBox(width: 20),
                    Expanded(
                      child: Column(
                        children: [
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                isJacketFavorite = !isJacketFavorite;
                              });
                            },
                            child: Container(
                              width: 100,
                              height: 100,
                              child: Stack(
                                alignment: Alignment.topRight,
                                children: [
                                  Image.asset(
                                    'assets/jacket.png',
                                    fit: BoxFit.cover,
                                  ),
                                  Icon(
                                    isplusTouchedJacket
                                        ? Icons.favorite
                                        : Icons.favorite_border,
                                    color: isplusTouchedJacket
                                        ? Colors.red
                                        : Colors.white,
                                  ),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(height: 10),
                          Text('JACKET', style: TextStyle(fontSize: 20)),
                          SizedBox(height: 10),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text('\$200',
                                  style: TextStyle(color: Colors.blue)),
                              SizedBox(width: 5),
                              GestureDetector(
                                onTap: () {
                                  setState(() {
                                    isplusTouchedJacket = !isplusTouchedJacket;
                                  });
                                },
                                child: CircleAvatar(
                                  backgroundColor: isplusTouchedJacket
                                      ? Colors.blue
                                      : Colors.transparent,
                                  radius: 12,
                                  child: Icon(
                                    Icons.add,
                                    color: isplusTouchedJacket
                                        ? Colors.white
                                        : Colors.blue,
                                    size: 16,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.all(16.0),
                child: Row(
                  children: [
                    Expanded(
                      child: Column(
                        children: [
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                isTshirtFavorite = !isTshirtFavorite;
                              });
                            },
                            child: Container(
                              width: 100,
                              height: 100,
                              child: Stack(
                                alignment: Alignment.topRight,
                                children: [
                                  Image.asset(
                                    'assets/t-shirt.png',
                                  ),
                                  Icon(
                                    isTshirtFavorite
                                        ? Icons.favorite
                                        : Icons.favorite_border,
                                    color: isTshirtFavorite
                                        ? Colors.red
                                        : Colors.white,
                                  ),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(height: 10),
                          Text('t-shirt', style: TextStyle(fontSize: 20)),
                          SizedBox(height: 10),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text('\$1000',
                                  style: TextStyle(color: Colors.blue)),
                              SizedBox(width: 5),
                              GestureDetector(
                                onTap: () {
                                  setState(() {
                                    isplusTouchedTshirt = !isplusTouchedTshirt;
                                  });
                                },
                                child: CircleAvatar(
                                  backgroundColor: isplusTouchedTshirt
                                      ? Colors.blue
                                      : Colors.transparent,
                                  radius: 12,
                                  child: Icon(
                                    Icons.add,
                                    color: isplusTouchedTshirt
                                        ? Colors.white
                                        : Colors.blue,
                                    size: 16,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    SizedBox(width: 20),
                    Expanded(
                      child: Column(
                        children: [
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                isTroutherFavorite = !isTroutherFavorite;
                              });
                            },
                            child: Container(
                              width: 100,
                              height: 100,
                              child: Stack(
                                alignment: Alignment.topRight,
                                children: [
                                  Image.asset(
                                    'assets/trouther.png',
                                    fit: BoxFit.cover,
                                  ),
                                  Icon(
                                    isplusTouchedTrouther
                                        ? Icons.favorite
                                        : Icons.favorite_border,
                                    color: isplusTouchedTrouther
                                        ? Colors.red
                                        : Colors.white,
                                  ),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(height: 10),
                          Text('TROUZER', style: TextStyle(fontSize: 20)),
                          SizedBox(height: 10),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text('\$200',
                                  style: TextStyle(color: Colors.blue)),
                              SizedBox(width: 5),
                              GestureDetector(
                                onTap: () {
                                  setState(() {
                                    isplusTouchedTrouther =
                                        !isplusTouchedTrouther;
                                  });
                                },
                                child: CircleAvatar(
                                  backgroundColor: isplusTouchedTrouther
                                      ? Colors.blue
                                      : Colors.transparent,
                                  radius: 12,
                                  child: Icon(
                                    Icons.add,
                                    color: isplusTouchedTrouther
                                        ? Colors.white
                                        : Colors.blue,
                                    size: 16,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'product.dart';
import 'main.dart';
import 'package:first/search.dart';

class searching extends StatefulWidget {
  @override
  _searching createState() => _searching();
}

class _searching extends State<searching> {
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
  String searchText = '';
  List<String> items = ['red', 'black', 'blue', 'green', 'yellow'];

  List<String> get filteredItems {
    if (searchText.isEmpty) {
      return items;
    } else {
      return items.where((item) => item.contains(searchText)).toList();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
            // Handle back button press
          },
        ),
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
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: 'Search...',
                        ),
                        onChanged: (value) {
                          setState(() {
                            searchText = value;
                          });
                        },
                      ),
                    ),
                    IconButton(
                      icon: Icon(Icons.search),
                      onPressed: () {
                        // Handle search icon tapped
                      },
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.all(16.0),
                child: Text(
                  filteredItems.isEmpty
                      ? 'No items found'
                      : '${filteredItems.length} item(s) found',
                  style: TextStyle(fontSize: 18),
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
                                    'assets/s1.png',
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
                          Text('red', style: TextStyle(fontSize: 20)),
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
                          Text('black', style: TextStyle(fontSize: 20)),
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
                                    'assets/s2.png',
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
                          Text('silver', style: TextStyle(fontSize: 20)),
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
                                    'assets/s3.png',
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
                          Text('what and black',
                              style: TextStyle(fontSize: 20)),
                          SizedBox(height: 10),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text('\$43',
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
                                    'assets/s5.png',
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
                          Text('black nike', style: TextStyle(fontSize: 20)),
                          SizedBox(height: 10),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text('\$39',
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
                                    'assets/s2.png',
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
                          Text('grey', style: TextStyle(fontSize: 20)),
                          SizedBox(height: 10),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text('\$37',
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
                                    'assets/s1.png',
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
                          Text('red mod', style: TextStyle(fontSize: 20)),
                          SizedBox(height: 10),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text('\$42',
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
                      child: Column(children: [
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
                                  'assets/s3.png',
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
                        Text('silver', style: TextStyle(fontSize: 20)),
                        SizedBox(height: 10),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text('\$45', style: TextStyle(color: Colors.blue)),
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
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            IconButton(
                              icon: Icon(Icons.home),
                              onPressed: () {
                                Navigator.pushReplacement(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => TelegramProfile()),
                                );
                              },
                            ),
                            IconButton(
                              icon: Icon(Icons.search),
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => searching()),
                                );
                              },
                            ),
                            IconButton(
                              icon: Icon(Icons.person),
                              onPressed: () {
                                // Navigate to profile page
                              },
                            ),
                            IconButton(
                                icon: Icon(Icons.list),
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => ProductPage()),
                                  );
                                }),
                          ],
                        ),
                      ]),
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

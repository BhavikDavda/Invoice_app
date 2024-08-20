import 'package:flutter/material.dart';
import 'package:invoice_app/utils/allproducs.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightBlue,
        centerTitle: true,
        title: const Text(
          'Home',
          style: TextStyle(
            color: Colors.black,
            fontSize: 25,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Column(
        children: [
          Expanded(
            flex: 5,
            child: Container(
              padding: const EdgeInsets.all(15),
              alignment: Alignment.topCenter,
              child: Column(
                children: [
                  Container(
                    padding: const EdgeInsets.all(10),
                    height: 60,
                    width: 380,
                    decoration: BoxDecoration(
                      color: Colors.grey.withOpacity(0.4),
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Row(
                      children: const [
                        Icon(
                          Icons.search_rounded,
                          color: Colors.black,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          "Search best products",
                          style: TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                        Spacer(),
                        Icon(Icons.production_quantity_limits_sharp),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              width: double.infinity,
              height: 210,
              decoration: BoxDecoration(
                image: const DecorationImage(
                  image: NetworkImage("https://img.freepik.com/premium-psd/online-shopping-from-home-sale-online-shopping-social-media-post_824239-1481.jpg?w=740"),
                  fit: BoxFit.fill,
                ),
                borderRadius: BorderRadius.circular(20),
                border: Border.all(color: Colors.grey, width: 3),
                color: Colors.blueGrey.shade200,
                boxShadow: const [
                  BoxShadow(
                    color: Colors.grey,
                    blurRadius: 10,
                    spreadRadius: 5,
                    offset: Offset(4, 4),
                  ),
                ],
              ),
            ),
          ),
          const Text(
            "All Products",
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
            ),
          ),
          Expanded(
            flex: 28,
            child: Container(
              padding: const EdgeInsets.all(10),
              alignment: Alignment.topLeft,
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ...Product.allData.map(
                          (e) => Padding(
                        padding: const EdgeInsets.only(right: 10, bottom: 10),
                        child: SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              ...e['categoryProducts'].map(
                                    (index) => Padding(
                                  padding: const EdgeInsets.all(10),
                                  child: GestureDetector(
                                    onTap: () {
                                      Navigator.of(context).pushNamed(
                                          'Detailpage',
                                          arguments:
                                          index as Map<String, dynamic>);
                                    },
                                    child: Container(
                                      height: 310,
                                      width: 210,
                                      decoration: BoxDecoration(
                                        color: Colors.grey.withOpacity(0.4),
                                        borderRadius: BorderRadius.only(topLeft: Radius.circular(20),bottomRight: Radius.circular(20),),
                                      ),
                                      child: Column(
                                        children: [
                                          Expanded(
                                            flex: 2,
                                            child: Container(
                                              padding:
                                              const EdgeInsets.only(top: 10),
                                              decoration: const BoxDecoration(
                                                borderRadius: BorderRadius.only(
                                                    topLeft:
                                                    Radius.circular(20),
                                                    topRight:
                                                    Radius.circular(20)),
                                              ),
                                              alignment: Alignment.center,
                                              child: Container(
                                                height: 180,
                                                width: 180,
                                                decoration: BoxDecoration(
                                                  color: Colors.white,
                                                  borderRadius:
                                                  BorderRadius.circular(20),
                                                  image: DecorationImage(
                                                    image: NetworkImage(
                                                        index['thumbnail']),
                                                    fit: BoxFit.contain,
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                          Expanded(
                                            flex: 2,
                                            child: Container(
                                              alignment: Alignment.topCenter,
                                              decoration: const BoxDecoration(
                                                borderRadius: BorderRadius.only(
                                                    bottomLeft:
                                                    Radius.circular(20),
                                                    bottomRight:
                                                    Radius.circular(20)),
                                              ),
                                              child: Column(
                                                mainAxisAlignment:
                                                MainAxisAlignment.start,
                                                children: [
                                                  Text(
                                                    "${index['title']}",
                                                    style: const TextStyle(
                                                      fontSize: 21,
                                                      fontWeight:
                                                      FontWeight.bold,
                                                    ),
                                                    maxLines: 1,
                                                    softWrap: false,
                                                    overflow:
                                                    TextOverflow.ellipsis,
                                                  ),
                                                  Padding(
                                                    padding:
                                                    const EdgeInsets.only(
                                                        left: 22,
                                                        right: 18),
                                                    child: Row(
                                                      mainAxisAlignment:
                                                      MainAxisAlignment.end,
                                                      children: [
                                                        const Icon(
                                                          Icons
                                                              .star_border_outlined,
                                                          color: Colors.amber,
                                                          size: 25,
                                                        ),
                                                        Text(
                                                          "${index['rating']}",
                                                          style: TextStyle(
                                                            fontSize: 23,
                                                            fontWeight:
                                                            FontWeight.bold,
                                                            color: Colors
                                                                .grey.shade700,
                                                          ),
                                                          textAlign:
                                                          TextAlign.center,
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                  const SizedBox(
                                                    height: 41,
                                                  ),
                                                  Padding(
                                                    padding:
                                                    const EdgeInsets.only(
                                                        left: 20),
                                                    child: Row(
                                                      mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                      children: [
                                                        Text(
                                                          "₹. ${index['price']}",
                                                          style: const TextStyle(
                                                            color: Colors.black,
                                                            fontWeight:
                                                            FontWeight.bold,
                                                            fontSize: 23,
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

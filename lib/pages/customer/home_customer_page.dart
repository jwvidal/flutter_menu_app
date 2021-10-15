import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_codigo3_menu_app/pages/customer/category_list_product_page.dart';
import 'package:flutter_codigo3_menu_app/pages/customer/product_detail_page.dart';
import 'package:flutter_codigo3_menu_app/services/firestore_service.dart';
import 'package:flutter_codigo3_menu_app/widgets/category_filter_widget.dart';
import 'package:flutter_codigo3_menu_app/widgets/item_carousel_widget.dart';
import 'package:flutter_codigo3_menu_app/widgets/text_normal_widget.dart';

class HomeCustomerPage extends StatelessWidget {

  FirestoreService _firestoreService = new FirestoreService();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff1B1A21),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              //Header
              Container(
                margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                child: Row(
                  children: [
                    CircleAvatar(
                      radius: 30,
                      backgroundImage: AssetImage("assets/images/logo.jpg"),
                    ),
                    SizedBox(
                      width: 8.0,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        H1(
                          text: "Central Palace",
                        ),
                        H2(
                          text: "Un sitio para tus mejores experiencias",
                        ),
                      ],
                    ),
                    Expanded(child: Container()),
                    IconButton(
                      onPressed: () {
                        FirestoreService _firestoreService = new FirestoreService();
                        _firestoreService.getCategories();
                      },
                      icon: Icon(
                        Icons.search,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              //Categories

              FutureBuilder(
                future: _firestoreService.getCategories(),
                builder: (BuildContext context, AsyncSnapshot snap){
                  if(snap.hasData){
                    return Container(
                      margin: EdgeInsets.symmetric(horizontal: 10.0),
                      child: SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: [
                            CategoryFilterWidget(
                              text: "Todos",
                              primary: true,
                              goTo: CategoryListProductPage(),
                            ),
                            CategoryFilterWidget(
                              text: "Postres",
                              primary: false,
                              goTo: CategoryListProductPage(),
                            ),
                            CategoryFilterWidget(
                              text: "Bebidas",
                              primary: false,
                              goTo: CategoryListProductPage(),
                            ),
                            CategoryFilterWidget(
                              text: "Platos de Fondo",
                              primary: false,
                              goTo: CategoryListProductPage(),
                            ),
                            CategoryFilterWidget(
                              text: "Entradas",
                              primary: false,
                              goTo: CategoryListProductPage(),
                            ),
                          ],
                        ),
                      ),
                    );
                  }
                  return Center(child: CircularProgressIndicator(),);
                },
              ),

              SizedBox(
                height: 20.0,
              ),
              //Promotions
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    ItemCarouselWidget(
                      image: "https://www.eluniverso.com/resizer/9pBwonr6vl9S_8woISSM9uIACQM=/1000x667/smart/filters:quality(70)/cloudfront-us-east-1.images.arcpublishing.com/eluniverso/GUVUR2ITPZGZ5D2C2YR3C3JXQA.jpg",
                      title: "Costillar de Cordero",
                      subtitle: "Costillar de cordero con especias y acompañamiento de ensaladas.",
                      price: "50.00",
                      rate: "4.6",
                      discount: "50",
                      goTo: ProductDetailPage(),
                    ),
                    ItemCarouselWidget(
                      image: "https://www.eluniverso.com/resizer/9pBwonr6vl9S_8woISSM9uIACQM=/1000x667/smart/filters:quality(70)/cloudfront-us-east-1.images.arcpublishing.com/eluniverso/GUVUR2ITPZGZ5D2C2YR3C3JXQA.jpg",
                      title: "Costillar de Cordero",
                      subtitle: "Costillar de cordero con especias y acompañamiento de ensaladas.",
                      price: "50.00",
                      rate: "4.6",
                      discount: "50",
                      goTo: ProductDetailPage(),
                    ),
                    ItemCarouselWidget(
                      image: "https://www.eluniverso.com/resizer/9pBwonr6vl9S_8woISSM9uIACQM=/1000x667/smart/filters:quality(70)/cloudfront-us-east-1.images.arcpublishing.com/eluniverso/GUVUR2ITPZGZ5D2C2YR3C3JXQA.jpg",
                      title: "Costillar de Cordero",
                      subtitle: "Costillar de cordero con especias y acompañamiento de ensaladas.",
                      price: "50.00",
                      rate: "4.6",
                      discount: "50",
                      goTo: ProductDetailPage(),
                    ),

                  ],
                ),
              ),
              SizedBox(
                height: 30.0,
              ),
              // Section 1
              Container(
                margin: EdgeInsets.symmetric(horizontal: 10.0),
                child: Row(
                  children: [
                    Text(
                      "Entradas",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 18.0,
                          fontFamily: 'Source Sans Pro Black'),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    ItemCarouselWidget(
                      image: "https://www.eluniverso.com/resizer/9pBwonr6vl9S_8woISSM9uIACQM=/1000x667/smart/filters:quality(70)/cloudfront-us-east-1.images.arcpublishing.com/eluniverso/GUVUR2ITPZGZ5D2C2YR3C3JXQA.jpg",
                      title: "Costillar de Cordero",
                      subtitle: "Costillar de cordero con especias y acompañamiento de ensaladas.",
                      price: "50.00",
                      rate: "4.6",
                      discount: "50",
                      goTo: ProductDetailPage(),
                    ),
                    ItemCarouselWidget(
                      image: "https://www.eluniverso.com/resizer/9pBwonr6vl9S_8woISSM9uIACQM=/1000x667/smart/filters:quality(70)/cloudfront-us-east-1.images.arcpublishing.com/eluniverso/GUVUR2ITPZGZ5D2C2YR3C3JXQA.jpg",
                      title: "Costillar de Cordero",
                      subtitle: "Costillar de cordero con especias y acompañamiento de ensaladas.",
                      price: "50.00",
                      rate: "4.6",
                      discount: "50",
                      goTo: ProductDetailPage(),
                    ),
                    ItemCarouselWidget(
                      image: "https://www.eluniverso.com/resizer/9pBwonr6vl9S_8woISSM9uIACQM=/1000x667/smart/filters:quality(70)/cloudfront-us-east-1.images.arcpublishing.com/eluniverso/GUVUR2ITPZGZ5D2C2YR3C3JXQA.jpg",
                      title: "Costillar de Cordero",
                      subtitle: "Costillar de cordero con especias y acompañamiento de ensaladas.",
                      price: "50.00",
                      rate: "4.6",
                      discount: "50",
                      goTo: ProductDetailPage(),
                    ),
                  ],
                ),
              ),

              //Section 2

              SizedBox(
                height: 30.0,
              ),
              // Section 1
              Container(
                margin: EdgeInsets.symmetric(horizontal: 10.0),
                child: Row(
                  children: [
                    Text(
                      "Bebidas",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 18.0,
                          fontFamily: 'Source Sans Pro Black'),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 20.0,
              ),

              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    ItemCarouselWidget(
                      image: "https://www.eluniverso.com/resizer/9pBwonr6vl9S_8woISSM9uIACQM=/1000x667/smart/filters:quality(70)/cloudfront-us-east-1.images.arcpublishing.com/eluniverso/GUVUR2ITPZGZ5D2C2YR3C3JXQA.jpg",
                      title: "Costillar de Cordero",
                      subtitle: "Costillar de cordero con especias y acompañamiento de ensaladas.",
                      price: "50.00",
                      rate: "4.6",
                      discount: "50",
                      goTo: ProductDetailPage(),
                    ),
                    ItemCarouselWidget(
                      image: "https://www.eluniverso.com/resizer/9pBwonr6vl9S_8woISSM9uIACQM=/1000x667/smart/filters:quality(70)/cloudfront-us-east-1.images.arcpublishing.com/eluniverso/GUVUR2ITPZGZ5D2C2YR3C3JXQA.jpg",
                      title: "Costillar de Cordero",
                      subtitle: "Costillar de cordero con especias y acompañamiento de ensaladas.",
                      price: "50.00",
                      rate: "4.6",
                      discount: "50",
                      goTo: ProductDetailPage(),
                    ),
                    ItemCarouselWidget(
                      image: "https://www.eluniverso.com/resizer/9pBwonr6vl9S_8woISSM9uIACQM=/1000x667/smart/filters:quality(70)/cloudfront-us-east-1.images.arcpublishing.com/eluniverso/GUVUR2ITPZGZ5D2C2YR3C3JXQA.jpg",
                      title: "Costillar de Cordero",
                      subtitle: "Costillar de cordero con especias y acompañamiento de ensaladas.",
                      price: "50.00",
                      rate: "4.6",
                      discount: "50",
                      goTo: ProductDetailPage(),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 40.0,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
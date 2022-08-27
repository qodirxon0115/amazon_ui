import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: const Color(0xFF018197),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              width: 100,
              child: const Image(
                image: AssetImage("assets/images/amazon_logo.png"),
              ),
            ),
            Container(
              child: Row(
                children: [
                  IconButton(
                    icon: const Icon(Icons.mic, color: Colors.white,),
                    onPressed: () => {},
                  ),
                  IconButton(
                    icon: const Icon(Icons.shopping_cart, color: Colors.white,),
                    onPressed: () => {},
                  ),
                ],
              )
            )
          ],
        ),
      ),
      drawer: const Drawer(),
      body: Container(
        color: Colors.grey[300],
        child: Column(
          children: [
            //search ui*
            Container(
              padding: const EdgeInsets.only(right: 10, bottom: 10, left: 10),
              color: const Color(0xFF018197),
              child: Container(
                height: 50,
                padding: const EdgeInsets.only(left: 10, right: 10),
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.grey,
                    width: 1,
                  ),
                  borderRadius: BorderRadius.circular(5),
                  color: Colors.white
                ),
                child: Row(
                  children: const [
                    Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: "What are you looking for?",
                          border: InputBorder.none,
                          icon: Icon(Icons.search, color: Color(0xFF018197),)
                        ),
                      ),
                    ),
                    Icon(Icons.camera_alt,color: Color(0xFF018197),),
                  ],
                ),
              ),
            ),
            Expanded(
              child: ListView(
                children: [

                  //#location
                  Container(
                    padding: const EdgeInsets.only(left: 10, right: 10),
                    color: Colors.blueGrey,
                    height: 45,
                    child: Row(
                      children: const [
                        Icon(Icons.location_on, color: Colors.white,),
                        SizedBox(width: 5),
                        Text("Deliver to Kore, Republic of",
                          style: TextStyle(color: Colors.white),)
                      ],
                    ),
                  ),

                  // #adds
                  SizedBox(
                    height: 140,
                    child: Row(
                      children: [
                        Expanded(
                          child: Container(
                            color: Colors.white,
                            child: Container(
                              height: 140,
                              decoration: const BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.only(
                                      topRight: Radius.circular(75),
                                      bottomRight: Radius.circular(75)),
                                  image: DecorationImage(
                                      image: AssetImage("assets/images/image_1.jpeg")
                                  )
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          child: Container(
                            padding: const EdgeInsets.all(20),
                            width: 180,
                            color: Colors.white,
                            child: const Center(
                              child: Text("we ship 45 million products",
                                style: TextStyle(fontSize: 16),),
                            ),
                          ),

                        ),
                        const SizedBox(height: 8,),
                      ],
                    ),
                  ),
                  const SizedBox(height: 8,),

                  // #sign in
                  Container(
                    padding: const EdgeInsets.only(left: 16, right: 16),
                    height: 160,
                    color: Colors.white,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text("Sign in for the best experience", style:
                        TextStyle(color: Colors.black, fontSize: 18),),
                        const SizedBox(height: 15,),
                        Container(
                          width: double.infinity,
                          height: 50,
                          color: Colors.orange,
                          child: const Center(
                            child: Text("Sign in",
                              style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold),),
                          ),),
                        const SizedBox(height: 15,),
                        const Text("Create an account",
                          style: TextStyle(
                              color: Colors.blueAccent, fontSize: 18),),
                      ],
                    ),
                  ),
                  const SizedBox(height: 8,),

                  // #deal
                  Container(
                    padding: const EdgeInsets.all(16),
                    color: Colors.white,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Text("Deal of the Day",
                          style: TextStyle(
                              color: Colors.black, fontSize: 22),),
                        SizedBox(height: 16,),
                        Image(
                          width: double.infinity,
                          height: 240,
                          image: AssetImage("assets/images/item_7.jpeg"),
                          fit: BoxFit.cover,
                        ),
                        SizedBox(height: 16,),
                        Text("Up to 31% off PDC UPS Battery back", style: TextStyle(fontSize: 17),),
                        SizedBox(height: 6,),
                        Text("\$10.99 - \$79.9", style: TextStyle(fontSize: 17),),
                      ],
                    ),


                  ),
                  const SizedBox(height: 8,),

                  // best
                  Container(
                    padding: const EdgeInsets.all(16),
                    color: Colors.white,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text("Best sellers in Electronics",
                          style: TextStyle(color: Colors.black, fontSize: 22),),
                        const SizedBox(height: 8,),
                        Container(
                          height: MediaQuery.of(context).size.width,
                          child: Row(
                            children: [
                              Expanded(
                                child: Container(
                                  child: Column(
                                    children: const [
                                      Expanded(
                                        child: Image(
                                          image: AssetImage("assets/images/item_7.jpeg"),
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                      SizedBox(height: 5,),
                                      Expanded(
                                        child: Image(
                                          image: AssetImage("assets/images/item_6.jpeg"),
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              const SizedBox(width: 5,),
                              Expanded(
                                child: Container(
                                  child: Column(
                                    children: const [
                                      Expanded(
                                        child: Image(
                                          image: AssetImage("assets/images/item_5.jpeg"),
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                      SizedBox(height: 5,),
                                      Expanded(
                                        child: Image(
                                          image: AssetImage("assets/images/item_4.jpeg"),
                                          fit: BoxFit.cover,
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
                  const SizedBox(height: 8,),

                  // top
                  Container(
                    padding: const EdgeInsets.all(16),
                    color: Colors.white,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text("Top product in Camera",
                          style: TextStyle(color: Colors.black, fontSize: 22),),
                        const SizedBox(height: 8,),
                        Container(
                          height: MediaQuery.of(context).size.width,
                          child: Column(
                            children: [
                              Expanded(
                                child: Container(
                                  child: const Image(
                                    width: double.infinity,
                                    image: AssetImage("assets/images/item_7.jpeg"),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              const SizedBox(height: 5,),
                              Expanded(
                                child: Container(
                                  child: Row(
                                    children: const [
                                      Expanded(
                                        child: Image(
                                          image: AssetImage("assets/images/item_5.jpeg"),
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                      SizedBox(width: 5,),
                                      Expanded(
                                        child: Image(
                                          image: AssetImage("assets/images/item_4.jpeg"),
                                          fit: BoxFit.cover,
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
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

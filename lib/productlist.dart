import 'package:flutter/material.dart';

class Product extends StatefulWidget {
  const Product({super.key});

  @override
  State<Product> createState() => _ProductState();
}

class _ProductState extends State<Product> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.blueAccent,
        title: const Text('Products', style: TextStyle(color: Colors.white),),
        centerTitle: true,
      ),
      body: SafeArea(child: ListView(
        children:  [
            Row(
              children: [
                Expanded(
                  flex: 1,
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Container(
                      color: Colors.red,
                      height: 100,
                      width: 100,                      
                    ),
                  ),
                ),
                 Expanded(
                  flex: 2,
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      textBaseline: TextBaseline.alphabetic,
                      children: [
                        const Text('Cotton Shirt', style: TextStyle(fontSize: 14),),
                        const Text('Loram Ipsum Sample Test for sample purposes in this now addtional textes needed', style: TextStyle(fontSize: 11),),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text('LKR 1000'),
                            TextButton(onPressed: (){}, child: const Text('Add to Card'))
                          ],
                        )
                      ],
                    ),
                  )
                )
              ],
            ),
            Row(
              children: [
                Expanded(
                  flex: 1,
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Container(
                      color: Colors.pink,
                      height: 100,
                      width: 100,                      
                    ),
                  ),
                ),
                 Expanded(
                  flex: 2,
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      textBaseline: TextBaseline.alphabetic,
                      children: [
                        const Text('Jeans', style: TextStyle(fontSize: 14),),
                        const Text('Loram Ipsum Sample Test for sample purposes in this now addtional textes needed', style: TextStyle(fontSize: 11),),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text('LKR 1600'),
                            TextButton(onPressed: (){}, child: const Text('Add to Card'))
                          ],
                        )
                      ],
                    ),
                  )
                )
              ],
            ),
            Row(
              children: [
                Expanded(
                  flex: 1,
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Container(
                      color: Colors.blue,
                      height: 100,
                      width: 100,                      
                    ),
                  ),
                ),
                 Expanded(
                  flex: 2,
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      textBaseline: TextBaseline.alphabetic,
                      children: [
                        const Text('Watch', style: TextStyle(fontSize: 14),),
                        const Text('Loram Ipsum Sample Test for sample purposes in this now addtional textes needed', style: TextStyle(fontSize: 11),),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text('LKR 1500'),
                            TextButton(onPressed: (){}, child: const Text('Add to Card'))
                          ],
                        )
                      ],
                    ),
                  )
                )
              ],
            ),
            Row(
              children: [
                Expanded(
                  flex: 1,
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Container(
                      color: Colors.yellow,
                      height: 100,
                      width: 100,                      
                    ),
                  ),
                ),
                 Expanded(
                  flex: 2,
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      textBaseline: TextBaseline.alphabetic,
                      children: [
                        const Text('Modern Frock', style: TextStyle(fontSize: 14),),
                        const Text('Loram Ipsum Sample Test for sample purposes in this now addtional textes needed', style: TextStyle(fontSize: 11),),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text('LKR 3000'),
                            TextButton(onPressed: (){}, child: const Text('Add to Card'))
                          ],
                        )
                      ],
                    ),
                  )
                )
              ],
            ),
            Row(
              children: [
                Expanded(
                  flex: 1,
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Container(
                      color: Colors.greenAccent,
                      height: 100,
                      width: 100,                      
                    ),
                  ),
                ),
                 Expanded(
                  flex: 2,
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      textBaseline: TextBaseline.alphabetic,
                      children: [
                        const Text('Party Frock', style: TextStyle(fontSize: 14),),
                        const Text('Loram Ipsum Sample Test for sample purposes in this now addtional textes needed', style: TextStyle(fontSize: 11),),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text('LKR 3200'),
                            TextButton(onPressed: (){}, child: const Text('Add to Card'))
                          ],
                        )
                      ],
                    ),
                  )
                )
              ],
            )
        ],
      )),
    );
  }
}
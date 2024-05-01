

import 'package:flutter/material.dart';import 'custom_container.dart';

import 'main.dart';
import 'custom_container.dart';

const String placeHolder ='https://www.pngitem.com/pimgs/m/421-4212617_person-placeholder-image-transparent-hd-png-download.png';
class Homepage extends StatelessWidget {
  const Homepage({super.key});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              //mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                _buildImageSection(),

                _titleSection(),
                _navigationSection(),
                Row(    //expanded widget bebohar kortechi
                  children: [
                    Expanded(
                      child: Container(
                        width: 50,
                        height: 50,
                        color: Colors.amber,
                      ),
                    ),
                    Expanded(
                      flex: 2,
                      child: Container(
                        width: 50,
                        height: 50,
                        color: Colors.deepPurple,
                      ),
                    ),
                    Expanded(
                      child: Container(
                        width: 50,
                        height: 50,
                        color: Colors.blueGrey,
                      ),
                    ),
                  ],
                ),
                _TextSection(),

              ],
              ),
             ),
            ),
          ),
         );
  }

  Padding _TextSection() {
    return Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text(
                  txt,
                  textAlign: TextAlign.justify,
                ),
              );
  }

  Row _navigationSection() {
    return Row(
                mainAxisAlignment: MainAxisAlignment.center,
                //center e anar jonno
                children: [
                  MyContainer( //custom_container.dart er widget
                    onPressed: () {
                      print(
                          'Calling......'); //skin er call button e click korle un console e Calling likha uthbe
                    },

                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Icon(Icons.call,
                          color: Colors.black,
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text('CALL'),
                      ],
                    ),
                  ),
                  MyContainer(
                    onPressed: () {
                      print('Openning map.....');
                    },

                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Icon(Icons.navigation,
                          color: Colors.black,
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text('ROUTE'),
                      ],
                    ),
                  ),
                  MyContainer(
                    onPressed: () {
                      print('Sharing....');
                    },

                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Icon(Icons.share,
                          color: Colors.black,
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text('SHARE'),
                      ],
                    ),
                  ),
                ],
              );
  }

  Padding _titleSection() {
    return Padding(
                padding: const EdgeInsets.all(8.0),
                child: ListTile( //ListTile er  charpashe padding deya holo
                  onTap: () { //Button er moto click kora jabe
                    print('item clicked'); //listTile e click korle Run Console e ei likhata show korbe

                  },
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12)
                  ),
                  tileColor: Colors.grey,
                  title: Text('My Beautiful Car'),
                  subtitle: Text('Kawranbazar, Dahaka, Bangladesh'),
                  trailing: Row(
                    mainAxisSize: MainAxisSize.min,
                    //Row er size choto kore dilam
                    children: [
                      Icon(Icons.star), //Right side er icon
                      Text('99')
                    ],
                  ),
                  //leading: Icon(Icons.favorite), // leading dile 1st er dike icon suru hobe
                ),
              );
  }

  Stack _buildImageSection() {
    return Stack(
                clipBehavior: Clip.none, //ekhon love icon ta r katbe na
                children: [
                  Image.network(
                    imageUrl,
                    width: double.infinity,
                    height: 300,
                    fit: BoxFit.cover,
                  ),
                  Positioned(
                    top: 0, // vartically
                    bottom: 0,
                    right: 0,
                    left: 0,
                      child: Center( //maje image ta anar jonno
                        child: Column( //text ta k image/card er niche anar jonno column nilam
                          mainAxisSize: MainAxisSize.min,  // column er size choto kore dilam
                          children: [
                            Card(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(50)
                              ),
                              elevation: 10,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(50),
                                child: Image.network(
                                  placeHolder,
                                  width: 100,
                                  height: 100,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            Text(      //text ta k image/card er niche aslam
                              'My Beautiful Car',
                              style: TextStyle(
                                backgroundColor: Colors.black54,
                                fontSize: 25,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  Positioned(
                    bottom: -40,
                    right: 10,
                    child: Icon( //icon ta half asche tai stack e clipBehavior niye kaj korte ho be
                      Icons.favorite,
                      size: 80,
                      color: Colors.red,
                    ),
                  )
                ],
             );
  }
}


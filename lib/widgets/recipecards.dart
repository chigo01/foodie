import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../models/recipe.dart';
import '../services/service.dart';
import '../utils/constant.dart';

class RecipeCard extends StatefulWidget {
  const RecipeCard({Key? key}) : super(key: key);

  @override
  State<RecipeCard> createState() => _RecipeCardState();
}

class _RecipeCardState extends State<RecipeCard> {
  NetworkService services = NetworkService();

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: services.getData(),
        builder: (context, AsyncSnapshot<List<Recipe?>?> snapshot) {
          if (snapshot.hasData) {
            List<Recipe?>? recipe = snapshot.data ?? [];

            return GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                 crossAxisCount:  2,
                 mainAxisSpacing: 0.02,
                childAspectRatio: 0.69


              ),
              cacheExtent: 20,
              padding: const EdgeInsets.only(bottom: 10),
              itemCount: recipe.length ,

              shrinkWrap: true,
              itemBuilder: (BuildContext context, int index) {
                return
             Stack(
                children: [
                  Positioned(
                    top: 40,
                    child: Container(
                      height: 220,
                      width: 170,
                      decoration: BoxDecoration(
                          shape: BoxShape.rectangle,
                          color: KfoodContainerColor,
                          borderRadius:
                              const BorderRadius.all(Radius.circular(16))),
                      child: Padding(
                        padding: const EdgeInsets.only(top: 60),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              textAlign: TextAlign.center,
                              style: GoogleFonts.poppins(
                                  fontSize: 12,
                                  color: Colors.white,
                                  fontWeight: FontWeight.normal,
                                  decoration: TextDecoration.none),
                              '${recipe[index]?.label}',
                            ),
                            const SizedBox(height: 10),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.star,
                                  color: kyellow,
                                  size: 20,
                                ),
                                const SizedBox(width: 7),
                                Icon(
                                  Icons.star,
                                  color: kyellow,
                                  size: 20,
                                ),
                                const SizedBox(width: 7),
                                Icon(
                                  Icons.star,
                                  color: kyellow,
                                  size: 20,
                                ),
                                const SizedBox(width: 7),
                                Icon(
                                  Icons.star,
                                  color: kyellow,
                                  size: 20,
                                ),
                                const SizedBox(width: 7),
                                Icon(
                                  Icons.star,
                                  color: kyellow,
                                  size: 20,
                                ),
                              ],
                            ),
                            const SizedBox(height: 20),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const Icon(Icons.timer_sharp,
                                    color: Colors.white),
                               const SizedBox(width: 5),
                                Text(
                                  style: GoogleFonts.poppins(
                                      fontSize: 12,
                                      color: Colors.white,
                                      fontWeight: FontWeight.normal,
                                      decoration: TextDecoration.none),
                                  // '${recipe[index]['recipe']['totalTime'] == 0.0 ? 20 : (recipe[index]['recipe']['totalTime']).toInt()} min',
                                  '${recipe[index]?.totalTime == 0.0 ? 20 : (recipe[index]?.totalTime)?.toInt()} min',
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    top: 20,
                    left: 30,
                    child: Padding(
                      padding: const EdgeInsets.only(bottom: 30),
                      child: CircleAvatar(
                        backgroundColor: KfoodContainerColor,
                        radius: 50,
                        backgroundImage: recipe[index]?.image != null ? NetworkImage(
                          recipe[index]!.image!,
                        ) : null,
                      ),
                    ),
                  ),
                ],
              );

                },

            );
          } else if (snapshot.hasError) {
            return Text(
              snapshot.error.toString(),
              style: const TextStyle(color: Colors.white),
            );
          }
          return const Center(
              child: CircularProgressIndicator(
            color: Colors.white,
          ));
        });
  }
}

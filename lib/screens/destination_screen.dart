import 'package:flutter/material.dart';
import 'package:travel_ui/models/destination_model.dart';
import 'package:travel_ui/models/activity_model.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class DestinationScreen extends StatefulWidget {
  final Destination destination;

  const DestinationScreen({Key? key, required this.destination})
      : super(key: key);

  @override
  State<DestinationScreen> createState() => _DestinationScreenState();
}

class _DestinationScreenState extends State<DestinationScreen> {
  Text _buildRatingStars(int rating) {
    String stars = "";
    for (int i = 0; i < rating; i++) {
      stars += "⭐ ";
    }
    stars.trim();
    return Text(stars);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        Stack(
          children: [
            Container(
              height: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30.0),
                boxShadow: const [
                  BoxShadow(
                      color: Colors.black26,
                      offset: Offset(0.0, 2.0),
                      blurRadius: 6.0)
                ],
              ),
              child: Hero(
                tag: widget.destination.imageUrl,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(30.0),
                  child: Image(
                      image: AssetImage(widget.destination.imageUrl),
                      // image: AssetImage(widget.destination.imageUrl!),
                      fit: BoxFit.cover),
                ),
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 10.0, vertical: 35.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Icon(
                      Icons.arrow_back,
                      size: 30.0,
                      color: Colors.black,
                    ),
                  ),
                  const Row(
                    children: [
                      Icon(
                        Icons.search,
                        size: 30.0,
                        color: Colors.black,
                      ),
                      SizedBox(
                        width: 15.0,
                      ),
                      Icon(
                        FontAwesomeIcons.arrowDownWideShort,
                        size: 25.0,
                        color: Colors.black,
                      ),
                    ],
                  )
                ],
              ),
            ),
            Positioned(
              left: 20.0,
              bottom: 20.0,
              child: Column(
                children: [
                  Text(widget.destination.city,
                      style: const TextStyle(
                          color: Colors.white,
                          fontSize: 35.0,
                          fontWeight: FontWeight.w600,
                          letterSpacing: 1.2)),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      const Icon(FontAwesomeIcons.locationArrow,
                          size: 15.0, color: Colors.white),
                      const SizedBox(
                        width: 5.0,
                      ),
                      Text(widget.destination.country,
                          style: const TextStyle(
                              color: Colors.white70, fontSize: 20.0)),
                    ],
                  ),
                ],
              ),
            ),
            const Positioned(
              right: 20.0,
              bottom: 20.0,
              child:
                  Icon(Icons.location_city, size: 25.0, color: Colors.white70),
            )
          ],
        ),
        Expanded(
          child: ListView.builder(
            itemCount: widget.destination.activities.length,
            itemBuilder: (context, index) {
              Activity activities = widget.destination.activities[index];
              return Stack(
                children: [
                  Container(
                    margin: const EdgeInsets.fromLTRB(40.0, 5.0, 20.0, 5.0),
                    height: 170.0,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20.0),
                        color: Color(0xffd2f6f3)),
                    child: Padding(
                      padding:
                          const EdgeInsets.fromLTRB(100.0, 20.0, 20.0, 20.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(activities.name,
                                  style: const TextStyle(
                                      fontSize: 18.0,
                                      fontWeight: FontWeight.w700)),
                              Column(
                                children: [
                                  Text("Rs ${activities.price.toString()}",
                                      style: const TextStyle(
                                          fontSize: 22.0,
                                          fontWeight: FontWeight.w600)),
                                  const Text("per pax",
                                      style: TextStyle(color: Colors.grey)),
                                ],
                              )
                            ],
                          ),
                          Text(activities.type,
                              style: const TextStyle(color: Colors.grey)),
                          _buildRatingStars(activities.rating),
                          const SizedBox(
                            height: 10.0,
                          ),
                          Row(
                            children: [
                              Container(
                                width: 70.0,
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                    color:
                                        Theme.of(context).colorScheme.primary,
                                    borderRadius: BorderRadius.circular(10.0)),
                                child: Text(activities.startTimes[0]),
                              ),
                              const SizedBox(
                                width: 10.0,
                              ),
                              Container(
                                width: 70.0,
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                    color:
                                        Theme.of(context).colorScheme.primary,
                                    borderRadius: BorderRadius.circular(10.0)),
                                child: Text(activities.startTimes[1]),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    left: 15.0,
                    top: 15.0,
                    bottom: 15.0,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20.0),
                      child: Image(
                          image: AssetImage(activities.imageUrl),
                          width: 120.0,
                          fit: BoxFit.cover),
                    ),
                  )
                ],
              );
            },
          ),
        )
      ]),
    );
  }
}

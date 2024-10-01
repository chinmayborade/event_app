import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class EventCard extends StatelessWidget {
  final String imageUrl;
  final String date;
  final List<String> labels;
  final String title;
  final String time;

  const EventCard({
    Key? key,
    required this.imageUrl,
    required this.date,
    required this.labels,
    required this.title,
    required this.time,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 250,
      height: 250,
      child: Card(
        elevation: 0,
        color: Colors.transparent,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.vertical(top: Radius.circular(15)),
                  child: Image.network(
                    imageUrl,
                    height: 140,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                ),
                Positioned(
                  top: 10,
                  right: 10,
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Text(
                      date,
                      style: TextStyle(
                        color: HexColor("0B012E"),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                Positioned(
                  bottom: 10,
                  left: 10,
                  child: Wrap(
                    spacing: 5,
                    runSpacing: 5,
                    children: labels
                        .map((label) => Chip(
                              label: Text(label,
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 12)),
                              backgroundColor:
                                  HexColor("B8A1DC").withOpacity(0.8),
                              padding: EdgeInsets.symmetric(
                                  horizontal: 8, vertical: 0),
                            ))
                        .toList(),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(12),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: HexColor("0B012E"),
                    ),
                  ),
                  SizedBox(height: 8),
                  Row(
                    children: [
                      Icon(Icons.access_time,
                          size: 16, color: HexColor("B8A1DC")),
                      SizedBox(width: 4),
                      Text(
                        time,
                        style: TextStyle(color: HexColor("B8A1DC")),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

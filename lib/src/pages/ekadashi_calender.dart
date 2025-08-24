
import 'package:flutter/material.dart';
import 'package:flutter_temple_app/src/model/data.dart';
import 'package:flutter_temple_app/src/model/ekadashi.dart';
import 'package:flutter_temple_app/src/themes/light_color.dart';
import 'package:flutter_temple_app/src/themes/theme.dart';
import 'package:flutter_temple_app/src/widgets/dg_card.dart';
import 'package:flutter_temple_app/src/widgets/title_text.dart';
import 'package:flutter_temple_app/src/widgets/extentions.dart';import 'package:flutter/material.dart';

import 'package:intl/intl.dart';


class EkadashiCalender extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Retrieve the passed ekadashiList
    List<Ekadashi> ekadashiList = [
      Ekadashi(
        name: "Paush Putrada Ekadashi",
        date: "2025-01-10",
        startTime: "2025-01-09 12:23 PM",
        endTime: "2025-01-10 10:20 AM",
        paranTime: "06:19 AM - 08:21 AM",
      ),
      Ekadashi(
        name: "Shat-tila Ekadashi",
        date: "2025-01-25",
        startTime: "2025-01-24 07:25 PM",
        endTime: "2025-01-25 08:32 PM",
        paranTime: "06:18 AM - 09:59 AM",
      ),
      Ekadashi(
        name: "Bhaimi Ekadashi",
        date: "2025-02-08",
        startTime: "2025-02-07 09:26 PM",
        endTime: "2025-02-08 08:16 PM",
        paranTime: "06:12 AM - 09:58 AM",
      ),
      Ekadashi(
        name: "Vijaya Ekadashi",
        date: "2025-02-24",
        startTime: "2025-02-23 01:56 PM",
        endTime: "2025-02-24 01:45 PM",
        paranTime: "06:01 AM - 09:54 AM",
      ),
      Ekadashi(
        name: "Amalaki Ekadashi",
        date: "2025-03-10",
        startTime: "2025-03-09 07:45 AM",
        endTime: "2025-03-10 07:45 AM",
        paranTime: "05:49 AM - 08:13 AM",
      ),
      Ekadashi(
        name: "Papamochani Ekadashi",
        date: "2025-03-26",
        startTime: "2025-03-25 05:05 AM",
        endTime: "2025-03-26 03:45 AM",
        paranTime: "05:34 AM - 09:39 AM",
      ),
      Ekadashi(
        name: "Kamada Ekadashi",
        date: "2025-04-08",
        startTime: "2025-04-07 08:00 PM",
        endTime: "2025-04-08 09:13 PM",
        paranTime: "05:21 AM - 09:32 AM",
      ),
      Ekadashi(
        name: "Varuthini Ekadashi",
        date: "2025-04-24",
        startTime: "2025-04-23 04:43 PM",
        endTime: "2025-04-24 02:32 PM",
        paranTime: "05:08 AM - 09:26 AM",
      ),
      Ekadashi(
        name: "Mohini Ekadashi",
        date: "2025-05-08",
        startTime: "2025-05-07 10:20 AM",
        endTime: "2025-05-08 12:29 PM",
        paranTime: "04:59 AM - 09:22 AM",
      ),
      Ekadashi(
        name: "Apara Ekadashi",
        date: "2025-05-23",
        startTime: "2025-05-23 01:12 AM",
        endTime: "2025-05-23 10:30 PM",
        paranTime: "04:53 AM - 09:20 AM",
      ),
      Ekadashi(
        name: "Pandava Nirjala Ekadashi",
        date: "2025-06-07",
        startTime: "2025-06-06 02:16 AM",
        endTime: "2025-06-07 04:48 AM",
        paranTime: "04:51 AM - 07:17 AM",
      ),
      Ekadashi(
        name: "Yogini Ekadashi",
        date: "2025-06-22",
        startTime: "2025-06-21 07:19 AM",
        endTime: "2025-06-22 04:28 AM",
        paranTime: "04:53 AM - 09:24 AM",
      ),
      Ekadashi(
        name: "Dev Shayani Ekadashi",
        date: "2025-07-06",
        startTime: "2025-07-05 06:59 PM",
        endTime: "2025-07-06 09:15 PM",
        paranTime: "04:58 AM - 09:27 AM",
      ),
      Ekadashi(
        name: "Kamika Ekadashi",
        date: "2025-07-21",
        startTime: "2025-07-20 12:13 PM",
        endTime: "2025-07-21 09:39 AM",
        paranTime: "05:04 AM - 07:05 AM",
      ),
      Ekadashi(
        name: "Pavitropana Ekadashi",
        date: "2025-08-05",
        startTime: "2025-08-04 11:42 AM",
        endTime: "2025-08-05 01:12 PM",
        paranTime: "05:10 AM - 09:32 AM",
      ),
      Ekadashi(
        name: "Annada Ekadashi",
        date: "2025-08-19",
        startTime: "2025-08-18 05:23 PM",
        endTime: "2025-08-19 03:33 PM",
        paranTime: "05:15 AM - 09:32 AM",
      ),
      Ekadashi(
        name: "Parshva Ekadashi",
        date: "2025-09-04",
        startTime: "2025-09-03 03:53 AM",
        endTime: "2025-09-04 04:22 AM",
        paranTime: "05:20 AM - 09:30 AM",
      ),
      Ekadashi(
        name: "Indira Ekadashi",
        date: "2025-09-17",
        startTime: "2025-09-16 01:12 PM",
        endTime: "2025-09-17 11:11 AM",
        paranTime: "05:22 AM - 09:28 AM",
      ),
      Ekadashi(
        name: "Papankusha Ekadashi",
        date: "2025-10-02",
        startTime: "2025-10-01 06:35 PM",
        endTime: "2025-10-02 08:25 PM",
        paranTime: "05:25 AM - 09:26 AM",
      ),
      Ekadashi(
        name: "Rama Ekadashi",
        date: "2025-10-17",
        startTime: "2025-10-16 11:12 AM",
        endTime: "2025-10-17 09:14 AM",
        paranTime: "05:28 AM - 09:24 AM",
      ),
      Ekadashi(
        name: "Devutthana Ekadashi",
        date: "2025-11-01",
        startTime: "2025-10-31 03:45 PM",
        endTime: "2025-11-01 02:11 PM",
        paranTime: "05:31 AM - 09:23 AM",
      ),
      Ekadashi(
        name: "Utpanna Ekadashi",
        date: "2025-11-15",
        startTime: "2025-11-14 08:21 PM",
        endTime: "2025-11-15 06:55 PM",
        paranTime: "05:36 AM - 09:21 AM",
      ),
      Ekadashi(
        name: "Mokshada Ekadashi",
        date: "2025-12-01",
        startTime: "2025-11-30 07:12 PM",
        endTime: "2025-12-01 09:01 PM",
        paranTime: "05:40 AM - 09:20 AM",
      ),
    ];
    return Scaffold(
      appBar: AppBar(
        title: Text('Ekadashi Calendar'),
      ),
      body: ListView.builder(
        itemCount: ekadashiList.length,
        itemBuilder: (context, index) {
          Ekadashi ekadashi = ekadashiList[index];
          return Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
            ),
            elevation: 5,
            margin: EdgeInsets.symmetric(vertical: 10, horizontal: 16),
            child: Padding(
              padding: EdgeInsets.all(12),
              child: Row(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(50),
                    child: Image.asset(
                      'assets/vishnu.jpg',
                      width: 80,
                      height: 80,
                      fit: BoxFit.cover,
                    ),
                  ),
                  SizedBox(width: 12),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          ekadashi.name,
                          style: TextStyle(
                            color: LightColor.orange,
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 6),
                        Text(
                          '📅 Date: ${DateFormat('dd-MMM-yyyy (EEE)').format(DateTime.parse(ekadashi.date))}',
                          style: TextStyle(
                            color: LightColor.grey_900,
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        Text(
                          '🕒 Tithi Starts: ${ekadashi.startTime}',
                          style: TextStyle(
                            color: Colors.black87,
                            fontSize: 14,
                          ),
                        ),Text(
                          '🕒 Tithi Ends: ${ekadashi.endTime}',
                          style: TextStyle(
                            color: Colors.black87,
                            fontSize: 14,
                          ),
                        ),
                        Text(
                          '🌅 Paran Time: Next day ${ekadashi.paranTime} ',
                          style: TextStyle(
                            color: Colors.black87,
                            fontSize: 14,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );;

        },
      ),
    );
  }
}
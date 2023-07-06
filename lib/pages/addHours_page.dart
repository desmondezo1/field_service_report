import 'dart:async';
import 'package:flutter/material.dart';
import 'package:fs_report/utilities/boxes.dart';
import 'package:fs_report/utilities/get_date.dart';
import 'package:hive/hive.dart';
import 'package:provider/provider.dart';
import 'package:intl/intl.dart';

import '../entities/report.dart';
import '../utilities/timer_provider.dart';

class Hours_page extends StatefulWidget {
  const Hours_page({Key? key}) : super(key: key);

  @override
  State<Hours_page> createState() => _Hours_pageState();
}

class _Hours_pageState extends State<Hours_page> {
  int placement = 0;
  int videos = 0;

  void addPlacement() {
    setState(() {
      placement += 1;
    });
  }

  void addVideo() {
    setState(() {
      videos += 1;
    });
  }

  void removeVideo() {
    setState(() {
      videos = videos - 1;
      if (videos < 0) {
        videos = 0;
      }
    });
  }

  void removePlacement() {
    setState(() {
      placement = placement - 1;
      if (placement < 0) {
        placement = 0;
      }
    });
  }

  @override
  void dispose() {
    Hive.box('Reports').close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final timerModel = Provider.of<TimerModel>(context, listen: true);

    Future<void> createRecord() async {
      var reportBox = await Hive.openBox<Report>('Reports');
      var report = Report();
      report.hours = timerModel.hours;
      report.minutes = timerModel.minutes;
      report.placements = placement;
      report.videos = videos;
      report.year = getDate.getYear();
      report.month = getDate.getMonth();
      report.createdAt = DateTime.now();
      reportBox.add(report);
      report.save();
      placement = 0;
      videos = 0;
      // for (int i = 0; i < reportBox.length; i++) {
      //   final object = reportBox.getAt(i);
      //   print('year: ${object?.year}. Month ${object?.month}');
      // }`
      reportBox.close();
    }

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFF5F5F5),
        actions: [
          IconButton(
            icon: Icon(
              Icons.history,
              size: 35,
              color: Colors.black54,
            ),
            onPressed: () {
              // Handle button press
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.fromLTRB(0, 183, 0, 0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                textBaseline: TextBaseline.alphabetic,
                crossAxisAlignment: CrossAxisAlignment.baseline,
                children: [
                  Text(
                    '${timerModel.hours}',
                    style: const TextStyle(
                        fontSize: 60,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'MPLUSRounded'),
                  ),
                  Text(
                    'Hrs',
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF636363),
                    ),
                  ),
                  SizedBox(
                    width: 18,
                  ),
                  Text(
                    '${timerModel.minutes}',
                    style: TextStyle(
                        fontSize: 60,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'MPLUSRounded'),
                  ),
                  Text(
                    'mins',
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF636363),
                    ),
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Text(
                    '${timerModel.seconds}',
                    style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.w600,
                        fontFamily: 'MPLUSRounded'),
                  ),
                  Text(
                    'secs',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF636363),
                    ),
                  ),
                ],
              ), // time display row
              SizedBox(
                height: 53,
              ),
              Center(
                child: timerModel.isRunning
                    ? stopOrPauseButton(
                        createRecord: createRecord,
                        pause: timerModel.pauseTimer,
                        paused: timerModel.paused,
                        stop: timerModel.stopTimer,
                        hours: timerModel.hours,
                        minutes: timerModel.minutes,
                      )
                    : startButton(
                        start: timerModel.startTimer,
                      ),
              ),
              SizedBox(
                height: 80,
              ),
              timerModel.isRunning
                  ? recordHistory(
                      addPlacements: addPlacement,
                      addVideos: addVideo,
                      placements: placement,
                      rmvPlacements: removePlacement,
                      rmvVideos: removeVideo,
                      videos: videos,
                    )
                  : Text('')
            ],
          ),
        ),
      ),
    );
  }
}

// Start Button Widget

class startButton extends StatefulWidget {
  final VoidCallback start;
  const startButton({required this.start});

  @override
  State<startButton> createState() => _startButtonState();
}

class _startButtonState extends State<startButton> {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        widget.start();
      },
      style: ElevatedButton.styleFrom(
          shape: CircleBorder(),
          padding: EdgeInsets.all(45),
          backgroundColor: Colors.white),
      child: const Icon(
        Icons.play_arrow_rounded,
        color: Colors.green,
        size: 73,
      ),
    );
  }
}

// Stop or Pause Button

class stopOrPauseButton extends StatefulWidget {
  // const stopOrPauseButton({Key? key}) : super(key: key);
  final VoidCallback pause;
  final VoidCallback stop;
  final VoidCallback createRecord;
  final bool paused;
  final int hours;
  final int minutes;

  stopOrPauseButton(
      {required this.createRecord,
      required this.pause,
      required this.stop,
      required this.paused,
      this.hours = 0,
      this.minutes = 0});
  @override
  State<stopOrPauseButton> createState() => _stopOrPauseButtonState();
}

class _stopOrPauseButtonState extends State<stopOrPauseButton> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          ElevatedButton(
            onPressed: () {
              widget.pause();
            },
            style: ElevatedButton.styleFrom(
                shape: CircleBorder(),
                padding: EdgeInsets.all(45),
                backgroundColor: Colors.white),
            child: widget.paused
                ? const Icon(
                    Icons.play_arrow_rounded,
                    color: Colors.green,
                    size: 73,
                  )
                : const Icon(
                    Icons.pause,
                    color: Colors.green,
                    size: 73,
                  ),
          ),
          SizedBox(width: 20),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
                shape: CircleBorder(),
                padding: EdgeInsets.all(12),
                backgroundColor: Colors.white),
            onPressed: () {
              widget.createRecord();
              widget.stop();
            },
            child: const Icon(
              Icons.stop_rounded,
              color: Colors.red,
              size: 40,
            ),
          )
        ],
      ),
    );
  }
}

// Record history

class recordHistory extends StatefulWidget {
  final VoidCallback addPlacements;
  final int placements;
  final int videos;
  final VoidCallback rmvPlacements;
  final VoidCallback addVideos;
  final VoidCallback rmvVideos;
  const recordHistory({
    required this.videos,
    required this.placements,
    required this.addPlacements,
    required this.rmvPlacements,
    required this.addVideos,
    required this.rmvVideos,
  });

  @override
  State<recordHistory> createState() => _recordHistoryState();
}

class _recordHistoryState extends State<recordHistory> {
  TextEditingController placementRecord = TextEditingController();
  TextEditingController videoRecord = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 33, right: 33),
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.only(bottom: 42),
            child: Row(
              children: [
                Expanded(
                  child: Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    child: Row(
                      children: [
                        Expanded(
                          flex: 8,
                          child: Container(
                            padding: EdgeInsets.fromLTRB(0, 20, 20, 20),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  padding: EdgeInsets.only(left: 20, right: 10),
                                  child: Text(
                                    'Placements',
                                    style: TextStyle(color: Colors.black54),
                                  ),
                                ),

                                // Container(
                                //   width: 50,
                                //   child: TextField(
                                //     onChanged: (text) {
                                //       int inputs = int.parse(text);
                                //       widget.updatePlacements(inputs);
                                //     },
                                //     controller: placementRecord,
                                //     textAlign: TextAlign.center,
                                //     decoration: const InputDecoration(
                                //       hintText: '0',
                                //       enabledBorder: UnderlineInputBorder(
                                //         borderSide: BorderSide(
                                //           color: Colors
                                //               .transparent, // Transparent color when not tapped
                                //         ),
                                //       ),
                                //       focusedBorder: UnderlineInputBorder(
                                //         borderSide: BorderSide(
                                //           color:
                                //               Colors.black, // Color when tapped
                                //         ),
                                //       ),
                                //     ),
                                //   ),
                                // ), //text input
                                Container(
                                  margin: EdgeInsets.only(left: 10, right: 10),
                                  child: Text(
                                    '${widget.placements}',
                                    style: TextStyle(
                                      fontSize: 20,
                                      fontFamily: 'Ubuntu',
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 8,
                                ),
                                Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.grey.withOpacity(0.5),
                                        spreadRadius: 2,
                                        blurRadius: 5,
                                        offset: Offset(0,
                                            3), // changes the shadow direction
                                      ),
                                    ],
                                    color: Colors.red,
                                  ),
                                  padding: EdgeInsets.all(10),
                                  child: IconButton(
                                    onPressed: () {
                                      widget.rmvPlacements();
                                      placementRecord.text =
                                          widget.placements.toString();
                                    },
                                    icon: Icon(Icons.remove),
                                  ),
                                ), //remove btn
                                SizedBox(
                                  width: 8,
                                ),
                                Container(
                                  padding: EdgeInsets.all(10),
                                  decoration: BoxDecoration(
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.grey.withOpacity(0.5),
                                        spreadRadius: 2,
                                        blurRadius: 5,
                                        offset: const Offset(0,
                                            3), // changes the shadow direction
                                      ),
                                    ],
                                    color: Colors.lightGreen,
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: IconButton(
                                    onPressed: () {
                                      widget.addPlacements();
                                      setState(() {
                                        placementRecord.text =
                                            widget.placements.toString();
                                      });
                                    },
                                    icon: Icon(Icons.add),
                                  ), //add btn
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(bottom: 42),
            child: Row(
              children: [
                Expanded(
                  child: Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    child: Row(
                      children: [
                        Expanded(
                          flex: 8,
                          child: Container(
                            padding: EdgeInsets.fromLTRB(0, 20, 20, 20),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  padding: EdgeInsets.only(left: 20),
                                  child: Text(
                                    'Videos',
                                    style: TextStyle(color: Colors.black54),
                                  ),
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                Container(
                                  margin: EdgeInsets.only(left: 10, right: 10),
                                  child: Text(
                                    '${widget.videos}',
                                    style: TextStyle(
                                      fontSize: 20,
                                      fontFamily: 'Ubuntu',
                                    ),
                                  ),
                                ),
                                Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.grey.withOpacity(0.5),
                                        spreadRadius: 2,
                                        blurRadius: 5,
                                        offset: Offset(0,
                                            3), // changes the shadow direction
                                      ),
                                    ],
                                    color: Colors.red,
                                  ),
                                  padding: EdgeInsets.all(10),
                                  child: IconButton(
                                    onPressed: () {
                                      widget.rmvVideos();
                                      videoRecord.text =
                                          widget.videos.toString();
                                    },
                                    icon: Icon(Icons.remove),
                                  ),
                                ), //remove btn
                                SizedBox(
                                  width: 8,
                                ),
                                Container(
                                  padding: EdgeInsets.all(10),
                                  decoration: BoxDecoration(
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.grey.withOpacity(0.5),
                                        spreadRadius: 2,
                                        blurRadius: 5,
                                        offset: const Offset(0,
                                            3), // changes the shadow direction
                                      ),
                                    ],
                                    color: Colors.lightGreen,
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: IconButton(
                                    onPressed: () {
                                      widget.addVideos();
                                      videoRecord.text =
                                          widget.videos.toString();
                                    },
                                    icon: Icon(Icons.add),
                                  ),
                                ), // add btn
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          // History Item
        ],
      ),
    );
  }
}

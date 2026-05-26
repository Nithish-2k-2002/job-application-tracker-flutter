import 'package:flutter/material.dart';

import '../widgets/dashboard_card.dart';
import 'add_job_screen.dart';
import 'chatbot_screen.dart';

class HomeScreen extends StatelessWidget {

  const HomeScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {

    return Scaffold(

      backgroundColor:
          const Color(0xffEEF2FF),

      appBar: AppBar(

        backgroundColor:
            Colors.transparent,

        elevation: 0,

        centerTitle: true,

        title: const Text(
          'Job Application Tracker',
          style: TextStyle(
            color: Colors.black,
            fontWeight:
                FontWeight.bold,
          ),
        ),

        actions: [

          IconButton(

            onPressed: () {

              Navigator.push(
                context,

                MaterialPageRoute(
                  builder: (context) =>
                      const ChatbotScreen(),
                ),
              );
            },

            icon: const Icon(
              Icons.smart_toy,
              color: Colors.black,
            ),
          ),
        ],
      ),

      body: SingleChildScrollView(

        child: Padding(

          padding:
              const EdgeInsets.all(20),

          child: Column(

            children: [

              // HERO SECTION

              Container(

                width: double.infinity,

                padding:
                    const EdgeInsets.all(
                        30),

                decoration: BoxDecoration(

                  gradient:
                      const LinearGradient(

                    colors: [

                      Color(0xff5B5FEF),
                      Color(0xff8F94FB),
                    ],
                  ),

                  borderRadius:
                      BorderRadius.circular(
                          30),

                  boxShadow: [

                    BoxShadow(
                      color: Colors.indigo
                          .withValues(alpha: 0.3),

                      blurRadius: 20,
                    ),
                  ],
                ),

                child: const Column(

                  children: [

                    Icon(
                      Icons.work,
                      size: 80,
                      color: Colors.white,
                    ),

                    SizedBox(height: 15),

                    Text(
                      'Track Your Dream Job',

                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 28,
                        fontWeight:
                            FontWeight.bold,
                      ),
                    ),

                    SizedBox(height: 10),

                    Text(
                      'Manage job applications professionally',

                      textAlign:
                          TextAlign.center,

                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 30),

              // SEARCH BAR

              TextField(

                decoration:
                    InputDecoration(

                  hintText:
                      'Search company...',

                  prefixIcon:
                      const Icon(
                    Icons.search,
                  ),

                  filled: true,

                  fillColor:
                      Colors.white,

                  border:
                      OutlineInputBorder(

                    borderRadius:
                        BorderRadius
                            .circular(
                                20),

                    borderSide:
                        BorderSide.none,
                  ),
                ),
              ),

              const SizedBox(height: 25),

              // DASHBOARD

              Row(

                children: [

                  Expanded(
                    child:
                        DashboardCard(

                      title: 'Applied',
                      count: '12',

                      icon:
                          Icons.send,

                      color:
                          Colors.blue,
                    ),
                  ),

                  const SizedBox(
                      width: 15),

                  Expanded(
                    child:
                        DashboardCard(

                      title:
                          'Interview',

                      count: '4',

                      icon:
                          Icons.people,

                      color: Colors
                          .orange,
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 15),

              Row(

                children: [

                  Expanded(
                    child:
                        DashboardCard(

                      title:
                          'Selected',

                      count: '2',

                      icon: Icons
                          .check_circle,

                      color:
                          Colors.green,
                    ),
                  ),

                  const SizedBox(
                      width: 15),

                  Expanded(
                    child:
                        DashboardCard(

                      title:
                          'Rejected',

                      count: '6',

                      icon:
                          Icons.cancel,

                      color:
                          Colors.red,
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 30),

              // EMPTY CARD

              Container(

                width: double.infinity,

                padding:
                    const EdgeInsets.all(
                        30),

                decoration: BoxDecoration(

                  color: Colors.white,

                  borderRadius:
                      BorderRadius.circular(
                          25),

                  boxShadow: [

                    BoxShadow(
                      color: Colors.grey
                          .withOpacity(0.1),

                      blurRadius: 10,
                    ),
                  ],
                ),

                child: Column(

                  children: [

                    Icon(
                      Icons.work_off,

                      size: 100,

                      color:
                          Colors.grey.shade400,
                    ),

                    const SizedBox(
                        height: 20),

                    Text(
                      'No Applications Yet',

                      style: TextStyle(
                        fontSize: 24,
                        fontWeight:
                            FontWeight.bold,

                        color: Colors
                            .grey.shade700,
                      ),
                    ),

                    const SizedBox(
                        height: 10),

                    Text(
                      'Start adding applications and track your progress.',

                      textAlign:
                          TextAlign.center,

                      style: TextStyle(
                        color: Colors
                            .grey.shade600,

                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),

      floatingActionButton:
          FloatingActionButton.extended(

        backgroundColor:
            Colors.indigo,

        onPressed: () {

          Navigator.push(
            context,

            MaterialPageRoute(
              builder: (context) =>
                  const AddJobScreen(),
            ),
          );
        },

        icon: const Icon(Icons.add),

        label: const Text(
          'Add Job',
        ),
      ),
    );
  }
}
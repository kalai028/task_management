// import 'package:carousel_slider/carousel_slider.dart';
// import 'package:flutter/material.dart';

// import 'package:intl/intl.dart';
// import 'package:task_management_ui/data/task_data.dart';
// import 'package:task_management_ui/helper/date_helper.dart';
// import 'package:task_management_ui/models/task_model.dart';
// import 'package:task_management_ui/utils/app_colors.dart';
// import 'package:task_management_ui/widgets/task.dart';

// class ThirdScreen extends StatefulWidget {
//   const ThirdScreen({super.key});

//   @override
//   State<ThirdScreen> createState() => _ThirdScreenState();
// }

// class _ThirdScreenState extends State<ThirdScreen> {
//   // final _scrollController = ScrollController();
//   // int _currentIndex = 0;
//   // double itemExtent = 50.0;
//   List<DateTime> datesOfThisMonth = [];

//   String selectedDate = DateFormat('d, MMMM yyyy').format(DateTime.now());

//   List<TaskModel> tasks = TaskData.taskListData;

//   final CarouselController _carouselController = CarouselController();

//   @override
//   void initState() {
//     setState(() {
//       datesOfThisMonth = DateHelper.getDatesInCurrentMonth();
//     });

//     // _carouselController.jumpToPage(
//     //     datesOfThisMonth.indexWhere((e) => e.day == DateTime.now().day));
//     // _scrollController.addListener(_scrollListener);
//     super.initState();
//   }

//   // void _scrollListener() {
//   //   double screenWidth = MediaQuery.of(context).size.width;

//   //   print('wid : $screenWidth');

//   //   // Calculate the center position
//   //   double centerPosition = _scrollController.offset + screenWidth / 2;

//   //   print('center : $centerPosition');

//   //   // Calculate the index of the item closest to the center
//   //   int index = ((centerPosition - itemExtent / 2) / itemExtent).round();

//   //   // Ensure the index is within bounds and update the state if necessary
//   //   if (index != _currentIndex &&
//   //       index >= 0 &&
//   //       index < datesOfThisMonth.length) {
//   //     setState(() {
//   //       _currentIndex = index;
//   //     });
//   //   }
//   // }

//   @override
//   Widget build(BuildContext context) {
//     double screenWidth = MediaQuery.of(context).size.width;

//     return Scaffold(
//       body: SingleChildScrollView(
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             const SizedBox(
//               height: 35,
//             ),
//             Padding(
//               padding: const EdgeInsets.all(15),
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       SizedBox(
//                         width: screenWidth * 0.7,
//                         child: const Column(
//                           crossAxisAlignment: CrossAxisAlignment.start,
//                           children: [
//                             Text(
//                               'Hello, John',
//                               style: TextStyle(color: AppColors.grey),
//                             ),
//                             SizedBox(height: 7),
//                             Text(
//                               'Organize Tasks,',
//                               style: TextStyle(fontSize: 15),
//                             ),
//                             SizedBox(height: 7),
//                             Text(
//                               'boost productivity with us.',
//                               style: TextStyle(fontSize: 15),
//                             ),
//                           ],
//                         ),
//                       ),
//                       IconButton(
//                         onPressed: () {},
//                         icon: Image.asset(
//                           'assets/images/add-icon.png',
//                           height: 35,
//                         ),
//                       )
//                     ],
//                   ),
//                   const SizedBox(height: 10),
//                   Text(
//                     selectedDate,
//                     style: const TextStyle(
//                       color: AppColors.primaryColor,
//                       fontWeight: FontWeight.bold,
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//             Container(
//               // height: 40,
//               padding: const EdgeInsets.symmetric(vertical: 5),
//               alignment: Alignment.center,
//               decoration: const BoxDecoration(
//                 border: Border.symmetric(
//                   horizontal: BorderSide(color: AppColors.grey),
//                 ),
//               ),
//               child: CarouselSlider.builder(
//                 carouselController: _carouselController,
//                 itemCount: datesOfThisMonth.length,
//                 itemBuilder: (context, index, realIndex) {
//                   bool isToday = selectedDate ==
//                       DateFormat('d, MMMM yyyy')
//                           .format(datesOfThisMonth[index]);
//                   return Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceAround,
//                     children: [
//                       Text(
//                         '${datesOfThisMonth[index].day}',
//                         style: TextStyle(
//                             color: isToday
//                                 ? AppColors.primaryColor
//                                 : AppColors.grey,
//                             fontWeight:
//                                 isToday ? FontWeight.bold : FontWeight.normal,
//                             fontSize: isToday ? 20 : 14),
//                       ),
//                       if (index != datesOfThisMonth.length - 1)
//                         const CircleAvatar(
//                           backgroundColor: AppColors.grey,
//                           radius: 3,
//                         ),
//                     ],
//                   );
//                 },
//                 options: CarouselOptions(
//                   viewportFraction: 0.12,
//                   disableCenter: true,
//                   height: 30,
//                   enlargeCenterPage: true,
//                   enlargeStrategy: CenterPageEnlargeStrategy.height,
//                   enableInfiniteScroll: false,
//                   initialPage: datesOfThisMonth
//                       .indexWhere((e) => e.day == DateTime.now().day),
//                   onPageChanged: (index, reason) {
//                     setState(() {
//                       selectedDate = DateFormat('d, MMMM yyyy')
//                           .format(datesOfThisMonth[index]);
//                     });
//                   },
//                 ),
//               ),
//             ),
//             ListView.builder(
//               padding: const EdgeInsets.all(15),
//               shrinkWrap: true,
//               itemCount: tasks.length,
//               physics: const NeverScrollableScrollPhysics(),
//               itemBuilder: (context, index) => Task(
//                 task: tasks[index],
//               ),
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }

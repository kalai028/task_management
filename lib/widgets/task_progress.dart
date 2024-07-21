import 'package:flutter/material.dart';
import 'package:task_management_ui/models/task_progress_model.dart';
import 'package:task_management_ui/utils/app_colors.dart';

class TaskProgress extends StatefulWidget {
  const TaskProgress({super.key, required this.progress});

  final TaskProgressModel progress;

  @override
  State<TaskProgress> createState() => _TaskProgressState();
}

class _TaskProgressState extends State<TaskProgress> {
  bool isCompleted = true;

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
      margin: const EdgeInsets.only(bottom: 15),
      decoration: BoxDecoration(
        color: AppColors.mediumGrey,
        borderRadius: BorderRadius.circular(25),
        border: Border.all(
          color: AppColors.lightGrey,
        ),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          InkWell(
            onTap: () {
              setState(() {
                isCompleted = !isCompleted;
              });
            },
            child: Container(
              height: 40,
              width: 40,
              decoration: BoxDecoration(
                color:
                    isCompleted ? AppColors.primaryColor : Colors.transparent,
                border: Border.all(
                  color: isCompleted ? AppColors.primaryColor : AppColors.grey,
                ),
                borderRadius: BorderRadius.circular(10),
              ),
            ),
          ),
          const SizedBox(
            width: 15,
          ),
          SizedBox(
            width: screenWidth * 0.64,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  widget.progress.progressTitle,
                  style: const TextStyle(fontSize: 15),
                ),
                const SizedBox(
                  height: 2,
                ),
                Text(
                  widget.progress.progressDescription,
                  style: const TextStyle(color: AppColors.grey),
                ),
                const SizedBox(
                  height: 8,
                ),
                Text(
                  widget.progress.progressTime,
                  style:
                      const TextStyle(fontSize: 13, color: AppColors.lightGrey),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

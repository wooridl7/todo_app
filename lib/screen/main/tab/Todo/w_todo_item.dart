import 'package:app_base/common/common.dart';
import 'package:app_base/common/dart/extension/datetime_extension.dart';
import 'package:app_base/common/widget/w_rounded_container.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';

import '../../../../data/memory/vo_todo.dart';
import 'w_todo_status.dart';

class TodoItem extends StatelessWidget {
  final Todo todo;

  const TodoItem(this.todo, {super.key});

  @override
  Widget build(BuildContext context) {
    return RoundedContainer(
        //color: Colors.white,
        color: context.appColors.itemBackground,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            todo.dueDate.relativeDays.text.make(),
            Row(
              children: [
                TodoStatusWidget(todo),
                Expanded(child: todo.title.text.size(20).medium.make()),
                IconButton(
                    onPressed: () async {},
                    icon: const Icon(EvaIcons.editOutline)),
              ],
            ),
          ],
        ).pOnly(top: 15, right: 15, left: 5, bottom: 10));
  }
}

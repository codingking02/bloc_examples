import 'package:bloc_examples/user/screen/edit_user_profile.dart';
import 'package:bloc_examples/user/screen/user_profile.dart';
import 'package:flutter/material.dart';

class ViewUser extends StatelessWidget {
  const ViewUser({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: ConstrainedBox(
        constraints:
            BoxConstraints(maxHeight: MediaQuery.of(context).size.height),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: 200,
              child: UserProfile(),
            ),
            Expanded(
              child: Container(
                  margin: EdgeInsets.all(20), child: EditUserProfile()),
            ),
          ],
        ),
      ),
    );
  }
}

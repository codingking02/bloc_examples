import 'package:bloc_examples/user/cubit/user_cubit.dart';
import 'package:bloc_examples/user/data/user_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class UserProfile extends StatelessWidget {
  const UserProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Profile",
        ),
        centerTitle: true,
      ),
      body: BlocBuilder<UserCubit, UserModel>(
        builder: (context, state) {
          return Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                /*BlocSelector<UserCubit, UserModel, String>(
                  selector: (state) {
                    return state.name!;
                  },
                  builder: (context, state) {
                    return Text(
                      "UserName : ${state}",
                      style: TextStyle(
                        fontSize: 20,
                      ),
                    );
                  },
                ),*/
                BlocConsumer<UserCubit, UserModel>(
                  listener: (context, state) {},
                  builder: (context, state) {
                    return Text(
                      "UserName : ${state.name}",
                      style: TextStyle(
                        fontSize: 20,
                      ),
                    );
                  },
                ),
                SizedBox(
                  height: 20,
                ),
                BlocConsumer<UserCubit, UserModel>(
                  listener: (context, state) {},
                  builder: (context, state) {
                    return Text(
                      "Email : ${state.email}",
                      style: TextStyle(
                        fontSize: 20,
                      ),
                    );
                  },
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}

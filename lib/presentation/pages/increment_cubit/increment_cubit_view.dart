import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'increment_cubit_cubit.dart';
import 'increment_cubit_state.dart';

class IncrementCubitPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) => IncrementCubitCubit(),
      child: Builder(builder: (context) => _buildPage(context)),
    );
  }

  Widget _buildPage(BuildContext context) {
    final cubit = BlocProvider.of<IncrementCubitCubit>(context);

    return Scaffold(
        appBar: AppBar(
          title: const Text("Belajar Bloc"),
        ),
        body: Column(
          children: [
            BlocBuilder<IncrementCubitCubit, IncrementCubitState>(
                builder: (context, state) {
                  return Center(
                    child: Text(
                      "Counter ${state.counter}",
                      style: Theme.of(context).textTheme.headline4,
                    ),
                  );
                }),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                FloatingActionButton(onPressed: cubit.increment, child: Icon(Icons.add),),
                FloatingActionButton(onPressed: cubit.decrement, child: Icon(Icons.remove),) ,
              ],
            ),
          ],
        ),
    );
  }
}

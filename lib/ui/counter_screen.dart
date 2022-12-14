import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../counter_bloc/counter_cubit.dart';

/// Counter Screen run on top of cubit for the counter
class CounterScreen extends StatelessWidget {
  const CounterScreen({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) =>
      //BLoC provider provides cubit or bloc to consume or observe
      BlocProvider(
        create: (context) => CounterCubit(),
        // bloc consumer uses cubit and state
        child: BlocConsumer<CounterCubit, CounterState>(
          // listen to state changes
          listener: (context, state) {
            // TODO: implement listener
          },
          // build upon state changes
          builder: (context, state) {
            CounterCubit cc = CounterCubit.get(context);

            return Scaffold(
              backgroundColor: Colors.black87,
              appBar: AppBar(
                title: Text(
                  title,
                  style: const TextStyle(fontSize: 22),
                ),
              ),
              body: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      textBaseline: TextBaseline.alphabetic,
                      children: <Widget>[
                        TextButton(
                          onPressed: () => cc.minus(),
                          child: const Text(
                            'MINUS',
                            style: TextStyle(color: Colors.tealAccent),
                          ),
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        Text(
                          '${cc.counter}',
                          style: const TextStyle(
                              color: Colors.white70,
                              fontWeight: FontWeight.w900,
                              fontSize: 50),
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        TextButton(
                          onPressed: () => cc.plus(),
                          child: const Text(
                            'PLUS',
                            style: TextStyle(color: Colors.tealAccent),
                          ),
                        ),
                      ],
                    ),
                    IconButton(
                        onPressed: () => cc.reset(),
                        icon: const Icon(
                          Icons.restart_alt_outlined,
                          color: Colors.tealAccent,
                        ))
                  ],
                ),
              ),
            );
          },
        ),
      );
}

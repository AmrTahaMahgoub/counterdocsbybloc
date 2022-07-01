import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'counter_bloc/counter_bloc.dart';

class CounterBody extends StatelessWidget {
  const CounterBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {


    return BlocConsumer<CounterBloc, CounterState>(
      listener: (context, state) {},
      builder: (context, state) {
        return Container(
            padding: EdgeInsets.all(50.0),
            child: Container(
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children:<Widget> [

                    Container(
                      padding: EdgeInsets.all(30),
                      child: Text(state.x.toString()),
                    ),

                    SizedBox(
                      height: 20.0,
                    ),
                    Container(
                      child: TextButton(
                          onPressed: () {
                            context
                                .read<CounterBloc>()
                                .add(Counterincrementevent());
                          },
                          child: Text('INCREMENT')),
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    Container(
                      child: TextButton(
                          onPressed: () {
                            context
                                .read<CounterBloc>()
                                .add(Counterdecrementevent());
                          },
                          child: Text('DECREMENT')),
                    ),

                  ]),
            ));
      },
    );
  }
}

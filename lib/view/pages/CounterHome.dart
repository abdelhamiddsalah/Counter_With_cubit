import 'package:counter/Model-view/cubit/counterstate_cubit.dart';
import 'package:counter/view/widgets/Button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Counterhome extends StatelessWidget {
   Counterhome({super.key});
int x=0;
int y =0;
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CounterstateCubit, CounterstateState>(
      builder: (context, state) {
        if (state is CounterstateincreA) {
          x = BlocProvider.of<CounterstateCubit>(context).x;
        }
        else{
           y = BlocProvider.of<CounterstateCubit>(context).y;
        }
        return Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.orange,
            title: Text(
              'Points Counter',
              style: TextStyle(color: Colors.white),
            ),
          ),
          body: Column(
            children: [
              SizedBox(
                height: 40,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      Text(
                        'Team A',
                        style: TextStyle(fontSize: 32),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                    '$x',
                        style: TextStyle(
                            fontSize: 150, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 13,
                      ),
                      Button(
                        tex: 'Add 1 point',
                        onPressed: () {
                          BlocProvider.of<CounterstateCubit>(context).functionIncre(butincrement: 1, team: 'A');
                        },
                      ),
                      SizedBox(
                        height: 13,
                      ),
                      Button(
                        tex: 'Add 2 point',
                        onPressed: () {
                            BlocProvider.of<CounterstateCubit>(context).functionIncre(butincrement: 2, team: 'A');
                        },
                      ),
                      SizedBox(
                        height: 13,
                      ),
                      Button(
                        tex: 'Add 3 point',
                        onPressed: () {
                            BlocProvider.of<CounterstateCubit>(context).functionIncre(butincrement: 3, team: 'A');
                        },
                      ),
                    ],
                  ),
                  VerticalDivider(
                    color: Colors.red,
                    thickness: 1,
                  ),
                  Column(
                    children: [
                      Text(
                        'Team B',
                        style: TextStyle(fontSize: 32),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        '$y',
                        style: TextStyle(
                            fontSize: 150, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 13,
                      ),
                      Button(
                        tex: 'Add 1 point',
                        onPressed: () {
                            BlocProvider.of<CounterstateCubit>(context).functionIncre(butincrement: 1, team: 'B');
                        },
                      ),
                      SizedBox(
                        height: 13,
                      ),
                      Button(
                        tex: 'Add 2 point',
                        onPressed: () {
                            BlocProvider.of<CounterstateCubit>(context).functionIncre(butincrement: 2, team: 'B');
                        },
                      ),
                      SizedBox(
                        height: 13,
                      ),
                      Button(
                        tex: 'Add 3 point',
                        onPressed: () {
                            BlocProvider.of<CounterstateCubit>(context).functionIncre(butincrement: 3, team: 'B');
                        },
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 40,
              ),
              Button(
                tex: 'Reset',
                onPressed: () {},
              ),
            ],
          ),
        );
      },
    );
  }
}

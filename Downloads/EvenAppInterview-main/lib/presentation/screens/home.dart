import 'package:EvenAppInterview/constants/colors.dart';
import 'package:EvenAppInterview/constants/decoration.dart';
import 'package:EvenAppInterview/presentation/bloc/home_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final _homeCubit = HomeCubit();
  @override
  void initState() {
    super.initState();
    _homeCubit.getHomeData('getHome');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Even Interview')),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            RichText(
              text: const TextSpan(
                text: 'Welcome ',
                style: TextStyle(color: Colors.black),
                children: [
                  TextSpan(
                    text: 'Candidate!',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 16),
            BlocBuilder<HomeCubit,HomeState>(
              bloc: _homeCubit,
              builder: (context, state) {

                if(state is HomeLoading){
                 return Container();
                }
                if(state is HomeLoaded) {
                  return ListView.separated(itemBuilder: (context, index) {
                    return InkWell(
                      onTap: () {},
                      child: Container(
                        padding:
                        const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                        decoration: BoxDecoration(
                          color: AppColors.error,
                          borderRadius: BorderRadius.circular(
                            AppDecoration.borderRadius,
                          ),
                        ),
                        child: const Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'You have pending documents!',
                              style: TextStyle(color: Colors.white),
                            ),
                            Icon(Icons.chevron_right_rounded,
                                color: Colors.white),
                          ],
                        ),
                      ),
                    );
                  },
                    itemCount: state.homeItems.length,
                    shrinkWrap: true,
                    separatorBuilder: (BuildContext context, int index) {
                      return const SizedBox(height: 20,);
                    },
                  );
                }
                return Container();
              }
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:network_checker/Network/network_bloc.dart';
import 'package:network_checker/Network/network_state.dart';

class NoInternetConnectionScreen extends StatelessWidget {
  const NoInternetConnectionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<NetworkBloc, NetworkState>(
      listener: (context, state) {
        if (state is NetworkSuccessState) {
          context.pop();
        }
      },
      child: Scaffold(
        backgroundColor:
            //181818
            // const Color.fromARGB(255, 27, 26, 26),
            Colors.amber[100],
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Transform.rotate(
                angle: -10 *
                    (3.141592653589793 / 120),

                child: const Text(
                  "!!!!!!!!!!!!",
                  style: TextStyle(
                    fontSize: 50,
                    color: Colors.black54,
                    fontFamily: 'Roboto',
                  ),
                ),
              ),
              const SizedBox(height: 20),
              ClipRRect(
                  borderRadius: BorderRadius.circular(100),
                  child: Image.asset(
                    "assets/images/dog.png",
                    width: 350,
                  )),
              Container(
                padding: const EdgeInsets.all(20),
                child: const Text(
                  "internet bağlantınızı kesmiş gibi görünüyor. lütfen bağlantınızı kontrol edin ve uygulamayı yeniden başlatın.",
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.black54,
                    fontFamily: 'Roboto',
                  ),
                  textAlign: TextAlign.center,
                ),
              ),

             
            ],
          ),
        ),
      ),
    );
  }

}

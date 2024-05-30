import 'package:find_my_shop/core/class/status_request.dart';
import 'package:find_my_shop/core/constant/lottie.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class HandlingDataView extends StatelessWidget {
  final StatusRequest statusRequest;
  final Widget widget;
  const HandlingDataView({super.key, required this.statusRequest, required this.widget});

  @override
  Widget build(BuildContext context) {
    return statusRequest == StatusRequest.loading?
         Center(child: Lottie.asset(LottieAsset.loading,width: 100,height: 100),) :
        statusRequest == StatusRequest.offlinefailure?
        const Center(child: Text("offline failure"),) :
        statusRequest == StatusRequest.serverfailure?
        const Center(child: Text("server failure"),) :
        statusRequest == StatusRequest.failure?
         const Center(child: Text("No Data"),) : widget;

  }
}
class HandlingDataRequst extends StatelessWidget {
  final StatusRequest statusRequest;
  final Widget widget;
  const HandlingDataRequst({super.key, required this.statusRequest, required this.widget});

  @override
  Widget build(BuildContext context) {
    return statusRequest == StatusRequest.loading?
    Center(child: Lottie.asset(LottieAsset.loading,width: 100,height: 100),) :
    statusRequest == StatusRequest.offlinefailure?
    const Center(child: Text("offline failure"),) :
    statusRequest == StatusRequest.serverfailure?
    const Center(child: Text("server failure"),) : widget;

  }
}

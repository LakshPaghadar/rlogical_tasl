// import 'package:dummy_api_call_retrofit/model/request/req_params.dart' as Req;
// import 'package:dummy_api_call_retrofit/notwork/store/post_store.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_mobx/flutter_mobx.dart';
// import 'package:mobx/mobx.dart';
//
// import '../generated/l10n.dart';
// import 'widgets/image_card.dart';
//
// class EmployeeListPage extends StatefulWidget {
//   const EmployeeListPage({super.key});
//
//   @override
//   State<EmployeeListPage> createState() => _EmployeeListPageState();
// }
//
// class _EmployeeListPageState extends State<EmployeeListPage> {
//   ValueNotifier<bool> isLoading = ValueNotifier(false);
//   ValueNotifier<bool> isLoading2 = ValueNotifier(false);
//   List<ReactionDisposer>? disposer;
//   ScrollController _scrollController = ScrollController();
//   int _page = 1;
//   final int _perPage = 10;
//   @override
//   void initState() {
//     super.initState();
//     _scrollController.addListener(_onScroll);
//     WidgetsBinding.instance.addPostFrameCallback((timeStamp) async {
//       isLoading2.value = true;
//       var request = Map.of({
//         Req.start: _page,
//         Req.limit: _perPage,
//       });
//       await postStore.getPhotosList2(request);
//       isLoading2.value = false;
//     });
//   }
//
//   @override
//   void dispose() {
//     super.dispose();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//       child: Scaffold(
//         appBar: AppBar(
//           title: Text(S.of(context).home),
//         ),
//         drawer: Drawer(
//             child: ListView(
//           children: [
//             GestureDetector(
//               onTap: () {
//                 Navigator.of(context).pop();
//               },
//               child: ListTile(
//                 leading: Icon(Icons.message),
//                 title: Text(S.of(context).home),
//               ),
//             ),
//             GestureDetector(
//               onTap: () {
//                 Navigator.of(context).pop();
//                 // Navigator.of(context).push(
//                 //     MaterialPageRoute(builder: (context) => SettingsPage()));
//               },
//               child: ListTile(
//                 leading: Icon(Icons.settings),
//                 title: Text(S.of(context).settings),
//               ),
//             ),
//           ],
//         )),
//         body: Column(
//           mainAxisSize: MainAxisSize.max,
//           children: [
//             const SizedBox(
//               height: 10.0,
//               width: double.infinity,
//             ),
//             Expanded(
//               child: ValueListenableBuilder(
//                 valueListenable: isLoading,
//                 builder: (context, value, child) {
//                   if (value) {
//                     return const Center(child: CircularProgressIndicator());
//                   } else {
//                     return child!;
//                   }
//                 },
//                 child: observeResponse(),
//               ),
//             )
//           ],
//         ),
//       ),
//     );
//   }
//
//   Widget observeResponse() {
//     return Padding(
//       padding: const EdgeInsets.all(20.0),
//       child: Observer(
//         builder: (context) {
//           if (isLoading.value) {
//             return const Center(child: CircularProgressIndicator());
//           } else if (postStore.photosList.isEmpty) {
//             return const Text("No Data found");
//           } else {
//             return ListView.builder(
//               itemCount: postStore.photosList.length + 1,
//               shrinkWrap: true,
//               controller: _scrollController,
//               itemBuilder: (context, index) {
//                 if (index < postStore.photosList.length) {
//                   return ImageCard(
//                     imageUrl: postStore.photosList[index].url!,
//                     description: postStore.photosList[index].title!,
//                   );
//                 } else {
//                   return _buildProgressIndicator();
//                 }
//               },
//             );
//           }
//         },
//       ),
//     );
//   }
//
//   Future<void> _loadData() async {
//     if (!isLoading2.value) {
//       setState(() {
//         isLoading2.value = true;
//       });
//       await Future.delayed(Duration(seconds: 2));
//       var request = Map.of({
//         Req.start: _page,
//         Req.limit: _perPage,
//       });
//       await postStore.getPhotosList2(request);
//
//       setState(() {
//         isLoading2.value = false;
//         _page = _page + 10;
//       });
//     }
//   }
//
//   void _onScroll() {
//     if (_scrollController.position.pixels ==
//         _scrollController.position.maxScrollExtent) {
//       _loadData();
//     }
//   }
//
//   Widget _buildProgressIndicator() {
//     return const Padding(
//       padding: EdgeInsets.all(8.0),
//       child: Center(
//         child: CircularProgressIndicator(),
//       ),
//     );
//   }
// }

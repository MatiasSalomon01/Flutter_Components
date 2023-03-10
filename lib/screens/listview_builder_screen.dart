import 'package:flutter/material.dart';
import 'package:flutter_components/theme/app_theme.dart';

class ListViewBuilderScreen extends StatefulWidget {
  const ListViewBuilderScreen({super.key});

  @override
  State<ListViewBuilderScreen> createState() => _ListViewBuilderScreenState();
}

class _ListViewBuilderScreenState extends State<ListViewBuilderScreen> {

  final List<int> imagesId = [1,2,3,4,5];
  final ScrollController scrollController = ScrollController();
  bool isLoading = false;

  @override
  void initState() {
    super.initState();
    scrollController.addListener(() { 
      //print('${scrollController.position.pixels}' +'-'+ '${scrollController.position.maxScrollExtent}');

      if(scrollController.position.pixels +500 >= scrollController.position.maxScrollExtent){
        fetchData();
      }
    });
  }

  Future fetchData() async{
    if(isLoading) return;
    isLoading = true;
    setState(() {});
    await Future.delayed(const Duration(seconds: 1));
    add5();
    isLoading = false;
    setState(() {});

    if(scrollController.position.pixels + 100 <= scrollController.position.maxScrollExtent )return;
    scrollController.animateTo(
      scrollController.position.pixels +120, 
      duration: const Duration(milliseconds: 300), 
      curve: Curves.bounceOut);
  }


  void add5(){
    final lastId = imagesId.last;

    imagesId.addAll([1,2,3,4,5].map((e) => lastId + e));

    setState(() {});
  }

  Future<void> onRefrash() async{
    await Future.delayed(const Duration(seconds: 2)); 
    final lastId = imagesId.last;
    imagesId.clear();
    imagesId.add(lastId+1);
    add5();
  }
  @override
  Widget build(BuildContext context) {

    final size = MediaQuery.of(context).size;

    return Scaffold(
      body: MediaQuery.removePadding(
        context: context,
        removeTop: true,
        removeBottom: true,
        child: Stack(
          children: [
            RefreshIndicator(
              color: AppTheme.primary,
              onRefresh: onRefrash,
              child: ListView.builder(
                controller: scrollController,
                itemBuilder: (context, index) {
                  return FadeInImage(
                    width: double.infinity,
                    height: 300,
                    fit: BoxFit.cover,
                    placeholder: const AssetImage('assets/jar-loading.gif'), 
                    image: NetworkImage('https://picsum.photos/500/300?image=${imagesId[index]}')
                  );
                },
                itemCount: imagesId.length,
              ),
            ),

            if(isLoading)
              Positioned(
                bottom: 40,
                left: size.width * 0.5 -30,
                child: const LoadingIcon()
              ),
          ],
        )
      )
    );
  }
}

class LoadingIcon extends StatelessWidget {
  const LoadingIcon({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      height: 60,
      width: 60,
      decoration: const BoxDecoration(
        color: Colors.white,
        shape: BoxShape.circle
      ),
      child: const CircularProgressIndicator(color: AppTheme.primary,),
    );
  }
}
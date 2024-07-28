import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter/material.dart';
import '../model/play_ground.dart';
import '../model/requiset.dart';
import '../helper/style/text_style.dart';
import '../screen/select_persoin.dart';
import '../widget/playerGround.dart';
import '../helper/Routing/rout.dart';
import '../widget/personIteam.dart';
var controllerprice=TextEditingController();
var controllerloc=TextEditingController();
class MySearch extends SearchDelegate<String>{
 
  @override
  Widget buildLeading(BuildContext context) {
    return IconButton(
      tooltip: 'Back',
      icon: AnimatedIcon(
        icon: AnimatedIcons.menu_arrow,
        progress: transitionAnimation,
      ),
      onPressed: () {
        this.close(context, '');
      },
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text('You have selected the word:'),
            GestureDetector(
              onTap: () {
                // Returns this.query as result to previous screen, c.f.
                // showSearch();
                // this.close(context, this.query);
              },
              child: Text(
                this.query,
                style: TextStyle(fontWeight: FontWeight.bold, color: Colors.blue),
              ),
            ),
          ],
        ),
      ),
    );
  }

  // Suggestions list while typing (this.query).
  @override
  Widget buildSuggestions(BuildContext context) {
   
    return Center();
  }
  @override
 
// Action buttons at the right of search bar.
  @override
  List<Widget> buildActions(BuildContext context) {
    return 
    <Widget>[
      query.isEmpty
          ? IconButton(
              tooltip: 'Voice Search',
              icon: const Icon(Icons.mic),
              onPressed: () {
                this.query = 'TODO: implement voice input';
              },
            )
          : 
          IconButton(
              tooltip: 'Clear',
              icon: const Icon(Icons.clear),
              onPressed: () {
                query = '';
                showSuggestions(context);
              },
            ),
    ];
  }
}

    class SearchPlayGroundName extends MySearch{
    List<PlayGround> words;
   List<String> history;
  SearchPlayGroundName({required this.words, required this.history});
   @override
  Widget buildSuggestions(BuildContext context) {
    final Iterable<PlayGround> suggestions = 
         words.where((word) => word.name.contains(query)
         );
     List<PlayGround> sugg=suggestions.toList();
    return  ListView.builder(
                itemBuilder: ((context, index) => PlayerGround(
                  image:sugg[index].image,
                  context: context,
                  star: sugg[index].start,
                  playground: sugg[index].name,
                  loction: sugg[index].location,
                  size: sugg[index].size,
                   price:  sugg[index].price,
    
                  )),
                itemCount: sugg.length,
              );
  }

    }
    
    
    class SearchPlayGroundLocation extends MySearch{
    List<PlayGround> words;
   List<String> history;
  SearchPlayGroundLocation({required this.words, required this.history});
   @override
  Widget buildSuggestions(BuildContext context) {
    final Iterable<PlayGround> suggestions = 
         words.where((word) => word.location.contains(query)
         );
     List<PlayGround> sugg=suggestions.toList();
    return  ListView.builder(
                itemBuilder: ((context, index) => PlayerGround(
                  image:sugg[index].image,
                  context: context,
                  star: sugg[index].start,
                  playground: sugg[index].name,
                  loction: sugg[index].location,
                  size: sugg[index].size,
                   price:  sugg[index].price,
    
                  )),
                itemCount: sugg.length,
              );
  }

    }

 class SearchPlayGroundPrice extends MySearch{
    List<PlayGround> words;
   List<String> history;
  SearchPlayGroundPrice({required this.words, required this.history});
   @override
  Widget buildSuggestions(BuildContext context) {
    final Iterable<PlayGround> suggestions = 
         words.where((word) => word.price.toString().contains(query)
         );
     List<PlayGround> sugg=suggestions.toList();
    return  ListView.builder(
                itemBuilder: ((context, index) => PlayerGround(
                  image:sugg[index].image,
                  context: context,
                  star: sugg[index].start,
                  playground: sugg[index].name,
                  loction: sugg[index].location,
                  size: sugg[index].size,
                   price:  sugg[index].price,
    
                  )),
                itemCount: sugg.length,
              );
  }

    }

      class SearchPersoin extends MySearch{
           List<Persoins> persoin;
   List<String> history;
  SearchPersoin({required this.persoin, required this.history});
   @override
  Widget buildSuggestions(BuildContext context) {
    final Iterable<Persoins> suggestions = 
         persoin.where((word) => word.name.contains(query));
     List<Persoins> sugg=suggestions.toList();
    return ListView.builder(
                  itemBuilder: (context, index) => InkWell(
                    child: PersonIteam(
       icon:Icons.group_add,
                    title: sugg[index].name,subtitle: sugg[index].degre),
                 onTap: (){
          Navigator.of(context).pushNamed(Routers.personDetiler);

                 },
                  ),
                  itemCount: persoin.length,
                );
  }

    }
     class SearchFood extends MySearch{
           List<Reguist> requist;
   List<String> history;
  SearchFood({required this.requist, required this.history});
   @override
  Widget buildSuggestions(BuildContext context) {
    final Iterable<Reguist> suggestions = 
         requist.where((word) => word.name.contains(query));
     List<Reguist> sugg=suggestions.toList();
    return  ListView.separated(
      
      itemCount: sugg.length,
      itemBuilder: (context, index) =>
      InkWell(
      onTap: () {
        Navigator.of(context).pushNamed(Routers.detiles);
      },
      child: Container(
        padding: EdgeInsets.only(right: 10),
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),
        color:Color.fromARGB(181, 224, 246, 226)),
        height: 150.h,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
           children: [
                    ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: Image(
            height: 160.h,
            width: 150.w,
            fit: BoxFit.cover,
            image: AssetImage(sugg[index].image)),
                    ),
                    Padding(
        padding: const EdgeInsets.only(right: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              sugg[index].name,
              style: TextStyles.media.copyWith(fontWeight: FontWeight.bold,
            )),
            Text( sugg[index].restornt,style: TextStyles.small),
            Text( sugg[index].price.toString(),style: TextStyles.small.copyWith(color: Theme.of(context).primaryColor)),
          ]
        ),
                    ),
                  ]),
      ),
    ), separatorBuilder: (BuildContext context, int index)=>Divider(height: 2.h,),
    );
  }

    }
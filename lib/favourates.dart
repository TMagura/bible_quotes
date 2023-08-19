import 'package:flutter/material.dart';
import 'package:my_marriage_rules/quote.dart';

class Favourates extends StatefulWidget {
  @override
  _FavouratesState createState() => _FavouratesState();

}

class _FavouratesState extends State<Favourates> {
  List<Favourites> favour=[];
   @override
  Widget build(BuildContext context) {
  
 List<Favourites> favour =  ModalRoute.of(context)!.settings.arguments as List<Favourites>;
    
         print(favour.length);
         print(favour.toSet().length);

   

    

    return Scaffold(
      backgroundColor: Colors.grey[200],
      
      appBar: AppBar(
        
        title:const Text('Favourites Quotes',
         style: TextStyle(
          fontFamily: 'IndieFlower',
          fontWeight:FontWeight.bold,
         )
         ),
        centerTitle: true,
        backgroundColor: Colors.redAccent,
      ),
       
      body:Container(
      decoration: const BoxDecoration(
        image:DecorationImage(

        image: AssetImage('assets/tree.jpg'),
        fit: BoxFit.cover,
        ),
       ),
    
      
       child:ListView.builder(
         itemCount: favour.length,
         itemBuilder: (BuildContext context, int index) {
           return Card(
            child: ListTile(
              hoverColor: Colors.lightBlueAccent,
              onTap: (){
              },
               title: Text(favour[index].text),
               subtitle: Text(favour[index].author,style:const TextStyle(color: Colors.redAccent),),
             
               
              leading:const CircleAvatar(
                backgroundImage: AssetImage('assets/tree.jpg'),
              ),
              
              ),
           );
         },
       ),
      ),
    );
  }
}
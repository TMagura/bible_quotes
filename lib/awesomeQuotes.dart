import 'package:flutter/material.dart';
import 'quote.dart';
class QuoteList extends StatefulWidget {
  @override
  State<QuoteList> createState() => _QuoteListState();
}

class _QuoteListState extends State<QuoteList> {
  List<Quotes> quotes = [
     Quotes(text:'I saw th loved you even more',author:'A'),
    Quotes(text:'You call it madness, but I call it love',author:'B'),
    Quotes(text:'I fell ishe should be. I love her and it is the beginning of everything.',author:'C'),
    Quotes(text:'Women are meant to be loved, not to be understood',author:'D'),
    Quotes(text:'Thinking of you keeps me awake. Dreaming of you keeps me asleep. Beinglive',author:'E'),
    Quotes(text:'Love does not begin and end the way we  love is a war; love is a growing up',author:'F'),
    Quotes(text:'Take my hand, take my whole life too. For I can’t help falling in love with you',author:'G'),
    Quotes(text:'Love is a thing that is full of cares and fears',author:'H'),
    Quotes(text:'I love you wi, so intimate that when I fall asleep your eyes close',author:'I'),
    Quotes(text:'I am who I am because of you. You are every reason, every hope, and ver had',author:'J'),
    Quotes(text:'It is better to be hated for what you are than to be loved for what you are not',author:'K'),
    Quotes(text:'Only true love can fuel the hard work that awaits you',author:'L'),
    Quotes(text:"Two are better than one",author:'M'),
    Quotes(text:"I wa so completely, loved so passionately and protected so fiercely",author:'N'),
    Quotes(text:"It’s always better when we’re together",author:'O')
  ];

  // create an empty List to feed our fav quotes
  List<Favourites> favourates=[];
 
 //a method to add our fav quotes to the list
   void addfav(index) {
    Quotes newquotes = quotes[index];
    String authorf =newquotes.author;
    String textf =newquotes.text;
        favourates.add(Favourites(text: textf, author: authorf)); 
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      
      appBar: AppBar(
        
        title: const Text('Awesome Quotes',
         style: TextStyle(
          fontFamily: 'IndieFlower',
          fontWeight:FontWeight.bold,
         )
         ),
        centerTitle: true,
        backgroundColor: Colors.redAccent,
      ),
       drawer: Drawer(
    child: ListView(
      padding: EdgeInsets.zero,
      children:  <Widget>[
        const DrawerHeader(
          decoration: BoxDecoration(
            color: Colors.redAccent,
          ),
          child: Padding(
            padding: EdgeInsets.all(40.0),
            child: Text(
              'QUOTES',
              style: TextStyle(
                color: Colors.white,
                fontSize: 45,
              ),
            ),
          ),
        ),
        ListTile(
          leading:TextButton.icon(                
                icon: Icon(Icons.favorite),
               onPressed: () { 
               Navigator.pushNamed(context, '/favourates',arguments: favourates);
            },
                label:Text('Favourites'),
               ),
        ),
        const ListTile(
          leading: Icon(Icons.settings),
          title: Text('Settings'),
        ),
      ],),),
      body:Container(
      decoration: const BoxDecoration(
        image:DecorationImage(

        image: AssetImage('assets/tree.jpg'),
        fit: BoxFit.cover,
        ),
       ),
    
      
       child:ListView.builder(
         itemCount: quotes.length,
         itemBuilder: (BuildContext context, int index) {
           return Card(
            child: ListTile(
              hoverColor: Colors.lightBlueAccent,
              onTap: (){
              },
              title: Text(quotes[index].text),
              subtitle: Text(quotes[index].author,style: TextStyle(color: Colors.redAccent),),
              trailing: TextButton.icon(                
                icon: Icon(Icons.favorite_border,color: Colors.redAccent,),
               onPressed: () { 
                setState(() {     
                addfav(index);
                });
               },
                label:Text((index+1).toString()),
               ),
              leading: CircleAvatar(
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

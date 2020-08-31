import 'package:flutter/material.dart';

class DataSearch extends SearchDelegate {
  @override
  List<Widget> buildActions(BuildContext context) {
    // AppBar action buttons
    return [
      IconButton(
        icon: Icon(Icons.clear),
        onPressed: (){
          query = '';
        }
      )
    ];
  }
  
  @override
  Widget buildLeading(BuildContext context) {
    // Icon to the left of the AppBar
    return IconButton(
      icon: AnimatedIcon(
        icon: AnimatedIcons.menu_arrow,
        progress: transitionAnimation
      ),
      onPressed: () {
        close(context, null);
      }
    );
  }
  
  @override
  Widget buildResults(BuildContext context) {
    // Create the results that we are going to show
    return Container();
  }
  
  @override
  Widget buildSuggestions(BuildContext context) {
    // These are the suggestions that appears when an user writes on the AppBar search
    return Container();
  }

}

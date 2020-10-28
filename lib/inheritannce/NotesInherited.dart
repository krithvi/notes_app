import 'package:flutter/cupertino.dart';

class NotesInherited extends InheritedWidget {
  final note = [
    {'title': 'Neruppu Da Nerungu Da', 'text': 'Paapom'},
    {'title': 'Nerungu Na Posukkura', 'text': 'Kooto'},
    {'title': 'Adikkara Azhikara Yenno', 'text': 'Mudiyuma Nadakkuma innu?'}
  ];

  NotesInherited(Widget child) : super(child: child);
  //constructor to get the child of the widget?

  static NotesInherited of(BuildContext context) {
    return (context.dependOnInheritedWidgetOfExactType(aspect: NotesInherited));
    //what is this?   update??
  }

  @override
  bool updateShouldNotify(NotesInherited oldWidget) {
    return oldWidget.note != note;
    //notifies true only if old and new notes are different
  }
}

import 'package:flutter/cupertino.dart';

class NotesInherited extends InheritedWidget
{
  final note = [
    {
      'title':'Neruppu Da Nerungu Da',
      'text': 'Paapom'
    },
    {
      'title':'Nerungu Na Posukkura',
      'text': 'Kooto'
    },
    {
      'title':'Adikkara Azhikara Yenno',
      'text': 'Mudiyuma Nadakkuma innu?'
    }
  ];

  NotesInherited(Widget child) : super(child: child); //what is this?

  static NotesInherited of(BuildContext context) => context.dependOnInheritedWidgetOfExactType(aspect: NotesInherited);
  //what is this?

  @override
  bool updateShouldNotify(NotesInherited oldWidget) => oldWidget.note != note;
  //notiies true only if old and new notes are different
}
import 'dart:async';


import 'package:satiate_task/main_page/symptoms_bloc_event.dart';
class Symptoms_Bloc
{
   List<List<int>> selections = [];
  final _symptoms_state_controller = StreamController<List<int>>();
  StreamSink<List<int>> get _inState
  {
    return _symptoms_state_controller.sink;
  }

  Stream<List<int>> get symptomsState
  {
    return _symptoms_state_controller.stream.asBroadcastStream();
  }


final _symptoms_event_controller = StreamController<SymptomsBlocEvent>();

  Sink<SymptomsBlocEvent> get symptomsStateSink {
     return _symptoms_event_controller.sink;
   }

   Symptoms_Bloc()
   {
     _symptoms_event_controller.stream.listen((SymptomsBlocEvent event) {
       _mapEventToState(event);
     });
   }

   void _mapEventToState(SymptomsBlocEvent event)
   {
     if(event is Add)
     {
       selections[Add().category].add(Add().index);
     }
     else
     {
       selections[Add().category].remove(Add().index);
     }
     _symptoms_state_controller.add(selections[Add().category]);
   }

}
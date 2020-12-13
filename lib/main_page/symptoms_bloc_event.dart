abstract class SymptomsBlocEvent {}
 class Add extends SymptomsBlocEvent {
 final int index;
 final int category;
 Add({this.index,this.category});
 }
class Subtract extends SymptomsBlocEvent {
 final int index;
 final int category;
 Subtract({this.index,this.category});
}
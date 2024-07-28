import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:playggound1/bloc/cubit/playGround_state.dart';

class PlayGroundCubit extends Cubit<PlayGroundState> {
  PlayGroundCubit() : super(PlayGroundInitial());
 static PlayGroundCubit get(context)=>BlocProvider.of(context);
 int index=0;
 bool obscure=false;
 int add=0;
 void ChangeIndex(int numder){
  index=numder;
 }
  void Change(){
  add++;
 }
void ChangeView(bool value){
   obscure= !value;
 }









 }
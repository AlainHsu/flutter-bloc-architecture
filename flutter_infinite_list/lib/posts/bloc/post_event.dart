part of 'post_bloc.dart';

abstract class PostEvent extends Equatable {
  List<Object> get props => [];
}

class PostRefreshed extends PostEvent {}

class PostFetched extends PostEvent {}

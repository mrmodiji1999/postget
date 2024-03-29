import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:postget/features/posts/bloc/posts_event.dart';
import 'package:postget/features/posts/bloc/posts_state.dart';
import 'package:postget/features/posts/models/post_data_ui_model.dart';
import 'package:postget/features/posts/repos/dddio.dart';
import 'package:postget/features/posts/repos/posts_repo.dart';

class PostsBloc extends Bloc<PostsEvent, PostsState> {
  PostsBloc() : super(PostsInitial()) {
    on<PostsInitialFetchEvent>(postsInitialFetchEvent);
    on<PostAddEvent>(postAddEvent);
    on<PostrefreshEvent>(postrefreshEvent);
  }

  FutureOr<void> postsInitialFetchEvent(
      PostsInitialFetchEvent event, Emitter<PostsState> emit) async {
    emit(PostsFetchingLoadingState());
    List<PostDataUiModel> posts = await PostsRepo.fetchPosts();

    emit(PostFetchingSuccessfulState(posts: posts));
  }

  FutureOr<void> postAddEvent(
      PostAddEvent event, Emitter<PostsState> emit) async {
    bool success = await PostsRepo.addPost();
    print(success);
    if (success) {
      emit(PostsAdditionSuccessState());
    } else {
      emit(PostsAdditionErrorState());
    }
  }

  FutureOr<void> postrefreshEvent(PostrefreshEvent event, Emitter<PostsState> emit) {
  }
}

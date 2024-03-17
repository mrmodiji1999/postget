abstract class PostsEvent {}

class PostsInitialFetchEvent extends PostsEvent {}

class PostAddEvent extends PostsEvent {}
class PostrefreshEvent extends PostsEvent {}

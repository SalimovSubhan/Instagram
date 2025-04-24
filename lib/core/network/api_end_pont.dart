// ignore_for_file: constant_identifier_names

class Apiendoint {
  //Account
  static String account(
    AccountEndpoint endpoint, {
    String? email,
    String? token,
    String? password,
    String? confirmPassword,
    String? oldPassword,
  }) {
    const String paht = '/Account';
    return switch (endpoint) {
      AccountEndpoint.REGISTER => '$paht/register',
      AccountEndpoint.LOGIN => '$paht/login',
      AccountEndpoint.FORGOTPASSWORD => '$paht/ForgotPassword?Email=$email',
      AccountEndpoint.RESETPASSWORD => '$paht/ResetPassword?Token=$token',
      AccountEndpoint.CHANGEPASSWORD =>
        '$paht/ChangePassword?OldPassword=$oldPassword&Password=$password&ConfirmPassword=$confirmPassword',
    };
  }

  //Chat
  static String chat(
    ChatEndpoint endpoint, {
    int? id,
    int? chatId,
    int? massageId,
  }) {
    const String path = '/Chat';
    return switch (endpoint) {
      ChatEndpoint.GET_CHATS => '$path/get-chats',
      ChatEndpoint.GET_CHAT_BY_ID => '$path/get-chat-by-id?chatId=$id',
      ChatEndpoint.CREATE_CHAT => '$path/create-chat',
      ChatEndpoint.SEND_MESSAGE => '$path/send-message',
      ChatEndpoint.DELETE_MESSAGE =>
        '$path/delete-message?massageId=$massageId',
      ChatEndpoint.DELETE_CHAT => '$path/delete-chat?chatId=$chatId',
    };
  }

  //followingRelationShip
  static String followingRelationShip(
    FollowingRelationShipEndpoint endpoint, {
    String? userId,
    String? followingUserId,
  }) {
    const String path = '/FollowingRelationShip';
    return switch (endpoint) {
      FollowingRelationShipEndpoint.GET_SUBSCRIBERS =>
        '$path/get-subscribers?UserId=$userId',
      FollowingRelationShipEndpoint.GET_SUBSCRIPTIONS =>
        '$path/get-subscriptions?UserId=$userId',
      FollowingRelationShipEndpoint.ADD_FOLOWWING_RELATION_SHIP =>
        '$path/add-following-relation-ship?followingUserId=$followingUserId',
      FollowingRelationShipEndpoint.DELETE_FOLOWWING_RELATION_SHIP =>
        '$path/delete-following-relation-ship?followingUserId=$followingUserId',
    };
  }

  //Location
  static String location(
    LocationEndpoint endpoint, {
    int? id,
  }) {
    const String path = '/Location';
    return switch (endpoint) {
      LocationEndpoint.GET_LOCATIONS => '$path/get-Locations',
      LocationEndpoint.GET_LOCATION_BY_ID => '$path/get-Location-by-id?id=$id',
      LocationEndpoint.ADD_LOCATION => '$path/add-Location',
      LocationEndpoint.UPDATE_LOCATION => '$path/update-Location',
      LocationEndpoint.DELETE_LOCATION => '$path/delete-Location?id=$id',
    };
  }

  //Post
  static String post(
    PostEndpoint endpoint, {
    int? id,
    int? pageNumber,
    int? commentId,
  }) {
    const String path = '/Post';
    return switch (endpoint) {
      PostEndpoint.GET_POSTS => '$path/get-posts?PageNumber=$pageNumber',
      PostEndpoint.GET_REELS => '$path/get-reels',
      PostEndpoint.GET_POST_BY_ID => '$path/get-post-by-id?id=$id',
      PostEndpoint.GET_MY_POSTS => '$path/get-my-posts',
      PostEndpoint.GET_FOLLOWING_POST => '$path/get-following-post',
      PostEndpoint.ADD_POST => '$path/add-post',
      PostEndpoint.DELETE_POST => '$path/delete-post?id=$id',
      PostEndpoint.LIKE_POST => '$path/like-post?postId=$id',
      PostEndpoint.VIEW_POST => '$path/view-post?postId=$id',
      PostEndpoint.ADD_COMMENT => '$path/add-comment',
      PostEndpoint.DELETE_COMMENT =>
        '$path/delete-comment?commentId=$commentId',
      PostEndpoint.ADD_POST_FAVORITE => '$path/add-post-favorite',
    };
  }

  //Story
  static String story(
    StoryEndpoint endpoint, {
    String? userId,
    int? storyId,
    int? id,
  }) {
    const String path = '/Story';
    return switch (endpoint) {
      StoryEndpoint.GET_STORIES => '$path/get-stories',
      StoryEndpoint.GET_USER_STORIES_USER_ID =>
        '$path/get-user-stories/$userId',
      StoryEndpoint.GET_MY_STORIES => '$path/get-my-stories',
      StoryEndpoint.LIKE_STORIES => '$path/LikeStory?storyId=$storyId',
      StoryEndpoint.GET_STORY_BY_ID => '$path/GetStoryById?id=$id',
      StoryEndpoint.ADD_STORIES => '$path/AddStories',
      StoryEndpoint.DELETE_STORIES => '$path/DeleteStory?id=$id',
      StoryEndpoint.ADD_STORY_VIEW => '$path/add-story-view?StoryId=$storyId',
    };
  }

  //User
  static String user(
    UserEndpoint endpoint, {
    String? text,
    String? userSearchId,
    int? id,
    String? userId,
  }) {
    const String path = '/User';
    return switch (endpoint) {
      UserEndpoint.GET_USERS => '$path/get-users',
      UserEndpoint.ADD_SEARCH_HISTORY => '$path/add-search-history?Text=$text',
      UserEndpoint.GET_SEARCH_HISTORIES => '$path/get-search-histories',
      UserEndpoint.DELETE_SEARCH_HISTORY =>
        '$path/delete-search-history?id=$id',
      UserEndpoint.DELETE_SEARCH_HISTORIES => '$path/delete-search-histories',
      UserEndpoint.ADD_USER_SEARCH_HISTORY =>
        '$path/add-user-search-history?UserSearchId=$userSearchId',
      UserEndpoint.GET_USER_SEARCH_HISTORIES =>
        '$path/get-user-search-histories',
      UserEndpoint.DELETE_USER_SEARCH_HISTORY =>
        '$path/delete-user-search-history?id=$id',
      UserEndpoint.DELETE_USER_SEARCH_HISTORIES =>
        '$path/delete-user-search-histories',
      UserEndpoint.DELETE_USER => '$path/delete-user?userId=$userId',
    };
  }

  //UserProfile
  static String userProfile(
    UserProfileEndpoint endpoint, {
    String? id,
    String? followingUserId,
  }) {
    const String path = '/UserProfile';
    return switch (endpoint) {
      UserProfileEndpoint.GET_USER_PROFILE_BY_ID =>
        '$path/get-user-profile-by-id?id=$id',
      UserProfileEndpoint.GET__IS_FOLLOW_USER_PROFILE_BY_ID =>
        '$path/get-is-follow-user-profile-by-id?followingUserId=$followingUserId',
      UserProfileEndpoint.GET_MY_PROFILE => '$path/get-my-profile',
      UserProfileEndpoint.UPDATE_USER_PROFILE => '$path/update-user-profile',
      UserProfileEndpoint.GET_POST_FAVORITES => '$path/get-post-favorites',
      UserProfileEndpoint.UPDATE_USER_IMAGE_PROFILE =>
        '$path/update-user-image-profile',
      UserProfileEndpoint.DELETE_USER_IMAGE_PROFILE =>
        '$path/delete-user-image-profile',
    };
  }
}

enum AccountEndpoint {
  REGISTER,
  LOGIN,
  FORGOTPASSWORD,
  RESETPASSWORD,
  CHANGEPASSWORD,
}

enum ChatEndpoint {
  GET_CHATS,
  GET_CHAT_BY_ID,
  CREATE_CHAT,
  SEND_MESSAGE,
  DELETE_MESSAGE,
  DELETE_CHAT,
}

enum FollowingRelationShipEndpoint {
  GET_SUBSCRIBERS,
  GET_SUBSCRIPTIONS,
  ADD_FOLOWWING_RELATION_SHIP,
  DELETE_FOLOWWING_RELATION_SHIP,
}

enum LocationEndpoint {
  GET_LOCATIONS,
  GET_LOCATION_BY_ID,
  ADD_LOCATION,
  UPDATE_LOCATION,
  DELETE_LOCATION,
}

enum PostEndpoint {
  GET_POSTS,
  GET_REELS,
  GET_POST_BY_ID,
  GET_MY_POSTS,
  GET_FOLLOWING_POST,
  ADD_POST,
  ADD_COMMENT,
  LIKE_POST,
  VIEW_POST,
  ADD_POST_FAVORITE,
  DELETE_POST,
  DELETE_COMMENT,
}

enum StoryEndpoint {
  GET_STORIES,
  GET_USER_STORIES_USER_ID,
  GET_STORY_BY_ID,
  GET_MY_STORIES,
  DELETE_STORIES,
  ADD_STORY_VIEW,
  ADD_STORIES,
  LIKE_STORIES,
}

enum UserEndpoint {
  GET_USERS,
  GET_USER_SEARCH_HISTORIES,
  GET_SEARCH_HISTORIES,
  DELETE_SEARCH_HISTORY,
  DELETE_SEARCH_HISTORIES,
  DELETE_USER_SEARCH_HISTORY,
  DELETE_USER_SEARCH_HISTORIES,
  DELETE_USER,
  ADD_USER_SEARCH_HISTORY,
  ADD_SEARCH_HISTORY,
}

enum UserProfileEndpoint {
  GET_USER_PROFILE_BY_ID,
  GET__IS_FOLLOW_USER_PROFILE_BY_ID,
  GET_MY_PROFILE,
  GET_POST_FAVORITES,
  UPDATE_USER_PROFILE,
  UPDATE_USER_IMAGE_PROFILE,
  DELETE_USER_IMAGE_PROFILE,
}

import 'package:toktik/domain/entities/video_post.dart';

abstract class VideoPostsDatasource {

  Future<List<VideoPost>> getFavoriteVideosByuser( String userID );

  Future<List<VideoPost>> getTrendingVideosByPage( int page );

}
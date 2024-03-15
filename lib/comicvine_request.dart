import 'package:api_comicvine/comicvine_model.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

part 'comicvine_request.g.dart';

@RestApi()
abstract class ComicVineAPI {
  factory ComicVineAPI(Dio dio, {required String baseUrl}) = _ComicVineAPI;

  @GET('characters')
  Future<CharactersResponse> getCharacters(@Query('limit') int limit);
}

class NetworkRequest {
  // Ici enlever base URL et rajouter l'interceptor

  final ComicVineAPI _api = ComicVineAPI(
    Dio(
      BaseOptions(
        queryParameters: {
          'api_key': 'ac0e4b56140119e1bf5433a18cbd8d63772bac5c',
          'format': 'json',
        },
      ),
    )..interceptors.add(
        InterceptorsWrapper(
          onRequest: (
            RequestOptions options,
            RequestInterceptorHandler handler,
          ) {
            return handler.next(
              RequestOptions(
                  path:
                      'https://api.formation-android.fr/comicvine/?url=${options.uri.path}',
                  queryParameters: options.uri.queryParameters),
            );
          },
        ),
      ),
    baseUrl: '',
  );

  Future<CharactersResponse> loadCharacters() {
    return _api.getCharacters(20);
  }
}

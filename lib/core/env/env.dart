enum EnvType { dev, prod }

class Env {
  final EnvType envType;
  final String baseUrl;
  final int connectionTimeOut;
  final int receiveTimeOut;

  // Define more environment variables here

  Env._internal({
    required this.envType,
    required this.baseUrl,
    this.connectionTimeOut = 60000,
    this.receiveTimeOut = 60000,
  });

  factory Env.dev() {
    return Env._internal(
      envType: EnvType.dev,
      baseUrl: 'https://housing-movie.herokuapp.com',
    );
  }

  factory Env.prod() {
    return Env._internal(
      envType: EnvType.dev,
      baseUrl: 'https://housing-movie.herokuapp.com',
    );
  }
}

{{> header.md }}
import '{{name.snakeCase()}}_repository.dart';
import 'package:flutter_core/flutter_core.dart';

{{> help.md }}
// class {{name.pascalCase()}}RepositoryImpl implements {{name.pascalCase()}}Repository{
class {{name.pascalCase()}}RepositoryImpl with {{name.pascalCase()}}Repository{

/*
 E.g:
  String? _accessToken;

  @override
  Future<ExampleResponse> example(ExampleRequest request,) async {
    myLog.info(request.toString().myPrintStringJson, tag: "example -> request", );
    final response = await myGraphql.query(
      query: ExampleQuery.pastQueryHere,
      variables: request.toJson(),);
      //    final response = await myDio.post(
      //       '/api/v1/payment/get-bill',
      //       body: request.toJson(),);

    final result = json.decode(response as String) as MyJsonMap;
    // final result = response as MyJsonMap;
    if(result case {
     'data': final MyJsonMap data
    }){
      return ExampleResponse.fromJson(data);
    }
    // else if (result case {
    //  'data': final List data
    // }){
    //   return ExampleResponse.fromJsonToList(data).toList();
    // }
    // else if (result case {
    //  'data': String _
    // }){
    //   return null;
    // }
    else {
      return Future.error("data == null");
      // throw "data == null";
    }

    // Old
    // myLog.info(response.toString().myPrintStringJson, tag: "example -> response");
    // return  ExampleResponse.fromJson(response!.data?["example"] as MyJsonMap);
    // return  ExampleResponse.fromJson(json.decode(response as String) as  MyJsonMap);
  }

   @override
  String? get token => _accessToken;

  */
}

part of {{name.snakeCase()}};

class ListenState {
  ListenStateEnum state;

  ListenState({
    required this.state
  });

  Map<dynamic, dynamic> toMap() {
    final Map<dynamic, dynamic> data = {};
    data['state'] = state;
    return data;
  }

  factory ListenState.fromMap(Map<dynamic, dynamic> json) {
    return ListenState(
      state: ListenStateEnum.getEnum(json['state']),
    );
  }
}

enum ListenStateEnum {
  working(0),
  free(1);

  const ListenStateEnum( this.code);

  final int code;

  static ListenStateEnum getEnum(int code){
    try {
      return ListenStateEnum.values.firstWhere((element) => element.code == code,);
    } catch (e) {
      return ListenStateEnum.working;
    }
  }

}

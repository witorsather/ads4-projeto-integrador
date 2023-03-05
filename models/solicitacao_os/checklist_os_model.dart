class ChecklistOSModel {
  String? idChecklist;
  String? tipo;
  String? descricao;

  ChecklistOSModel({this.idChecklist, this.tipo, this.descricao});

  ChecklistOSModel.fromJson(Map<String, dynamic> json) {
    this.idChecklist = json['id_item_checklist'];
    this.tipo = json['tipo_checklist'];
    this.descricao = json['descricao_item_checklist'];
  }

  Map<String, dynamic> toJson() {
    Map<String, dynamic> data = Map<String, dynamic>();

    data['id_item_checklist'] = this.idChecklist;
    data['tipo_checklist'] = this.tipo;
    data['descricao_item_checklist'] = this.descricao;

    return data;
  }
}

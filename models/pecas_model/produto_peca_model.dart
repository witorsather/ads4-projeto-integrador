// import 'package:gpp/src/models/pecas_model/pecas_estoque_model.dart';

// class ProdutoPecaModel {
//   int? id_produto_peca;
//   // int? id_produto_sku;
//   int? id_produto;
//   int? id_peca;
//   // int? id_material_fabricacao;
//   // int? id_cor;
//   int? quantidade_por_produto;
//   // int? status;

//   List<PecasEstoqueModel>? pecas_estoque;

//   ProdutoPecaModel({
//     this.id_produto_peca,
//     // this.id_produto_sku,
//     this.id_produto,
//     this.id_peca,
//     // this.id_material_fabricacao,
//     // this.id_cor,
//     this.quantidade_por_produto,
//     // this.status,
//     this.pecas_estoque,
//   });

//   factory ProdutoPecaModel.fromJson(Map<String, dynamic> json) {
//     return ProdutoPecaModel(
//       id_produto_peca: json['id_produto_peca'],
//       // id_produto_sku: json['id_produto_sku'],
//       id_produto: json['id_produto'],
//       id_peca: json['id_peca'],
//       // id_material_fabricacao: json['id_material_fabricacao'],
//       // id_cor: json['id_cor'],
//       quantidade_por_produto: json['quantidade_por_produto'],
//       // status: json['status'],
//       pecas_estoque: json['pecas_estoque'] != null
//           ? json['produto_peca'].map<PecasEstoqueModel>((data) {
//               return PecasEstoqueModel.fromJson(data);
//             }).toList()
//           : null,
//     );
//   }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();


//     data['id_produto_peca'] = this.id_produto_peca;
//     data['id_produto'] = this.id_produto;

//     data['id_peca'] = this.id_peca;
//     // data['id_material_fabricacao'] = this.id_material_fabricacao;
//     // data['id_cor'] = this.id_cor;
//     data['quantidade_por_produto'] = this.quantidade_por_produto;
//     // data['status'] = this.status;

//     // if (this.pecas_estoque != null) {
//     //   data['pecas_estoque'] = this.pecas_estoque!.map((value) => value.toJson()).toList();
//     // }

//     return data;
//   }
// }

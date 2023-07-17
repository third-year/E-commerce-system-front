class HomeModel{
   dynamic?  status;
   HomeDataModel? data ;

  // HomeModel({
  //   this .status,
  //   required this .data
  // });

  HomeModel.fromjson(Map<String,dynamic>json){
    status=json['status'];
    data=HomeDataModel.fromjson(json['data']);
  }
}
class HomeDataModel {
   ProductsModel? products ;

//   HomeDataModel({
//     required this.products
// });


  HomeDataModel.fromjson(Map<String, dynamic>json){
    products = ProductsModel.fromjson(json['products']);
  }
}
class ProductsModel{
  List<DocsModel> docs=[];
   dynamic? total;
   dynamic? limit;
   dynamic? page;
   dynamic? pages;

//   ProductsModel({
//     required this.docs,
//     this.limit,
//     this.pages,
//     this.page
// });

ProductsModel.fromjson(Map<String,dynamic>json){
  json['docs'].forEach((element){
  docs.add(DocsModel.fromjson(element));
  });
  total=json['total'];
  limit=json['limit'];
  page=json['page'];
  pages=json['pages'];
  }
}
class DocsModel{
  dynamic ? ratingsAverage;
  dynamic ? ratingsQuantity;
   dynamic ? id1;
   String ? name;
   String ? description;
   dynamic ? price;
   String ? image;
   dynamic ? quantity;
  List<dynamic>?address=[];
   String ? categories;
   String ? status;
   dynamic ? userId;
   dynamic ? v;
   dynamic ? id;

//   DocsModel({
//     this.id1,
//     this.name,
//     this.description,
//     this.price,
//     this.image,
//     this.quantity,
//     this.address,
//     this.categories,
//     this.status,
//     this.userId,
//     this.v,
//     this.readableAddress,
//     this.id
// });

  DocsModel.fromjson(Map<String,dynamic> json){
    ratingsAverage=['ratingsAverage'];
    ratingsQuantity=['ratingsQuantity'];
    name=json['name'];
  id1 =json['_id'];
  description=json['description'];
  price=json['price'];
  image=json['image'];
  quantity=json['quantity'];
  json['address'].forEach((element){
    address?.add(element);
  });
  categories=json['categories'];
  status=json['status'];
  userId=json['userId'];
  v=json['__v'];
  id=json['id'];

  }
}
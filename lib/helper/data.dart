import 'package:flutter_news/models/catogery_model.dart';

List<CategorieModel> getCategories() {
  List<CategorieModel> myCategories = List<CategorieModel>();
  CategorieModel categorieModel;

  //1
  categorieModel = new CategorieModel();
  categorieModel.categorieName = "Business";
  categorieModel.imageAssetUrl =
      "https://images.unsplash.com/39/lIZrwvbeRuuzqOoWJUEn_Photoaday_CSD%20(1%20of%201)-5.jpg?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=750&q=80";
  myCategories.add(categorieModel);

  //2
  categorieModel = new CategorieModel();
  categorieModel.categorieName = "Entertainment";
  categorieModel.imageAssetUrl =
      "https://images.unsplash.com/photo-1574375927938-d5a98e8ffe85?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=749&q=80";
  myCategories.add(categorieModel);

  //3
  categorieModel = new CategorieModel();
  categorieModel.categorieName = "General";
  categorieModel.imageAssetUrl =
      "https://images.unsplash.com/photo-1586769852836-bc069f19e1b6?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=750&q=80";
  myCategories.add(categorieModel);

  //4
  categorieModel = new CategorieModel();
  categorieModel.categorieName = "Health";
  categorieModel.imageAssetUrl =
      "https://images.unsplash.com/photo-1505751172876-fa1923c5c528?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=750&q=80";
  myCategories.add(categorieModel);

  //5
  categorieModel = new CategorieModel();
  categorieModel.categorieName = "Science";
  categorieModel.imageAssetUrl =
      "https://images.unsplash.com/photo-1567427018141-0584cfcbf1b8?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=750&q=80";
  myCategories.add(categorieModel);

  //5
  categorieModel = new CategorieModel();
  categorieModel.categorieName = "Sports";
  categorieModel.imageAssetUrl =
      "https://images.unsplash.com/photo-1552674605-db6ffd4facb5?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=750&q=80";
  myCategories.add(categorieModel);

  //5
  categorieModel = new CategorieModel();
  categorieModel.categorieName = "Technology";
  categorieModel.imageAssetUrl =
      "https://images.unsplash.com/photo-1485827404703-89b55fcc595e?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=750&q=80";
  myCategories.add(categorieModel);

  return myCategories;
}

class Category {
  int id;
  String label;
  String created_at;
  String updated_at;

  Category({
    required this.id,
    required this.label,
    required this.created_at,
    required this.updated_at
  });
}


class Book {
  int id;
  String titre;
  String auteur;
  int nombreDePage;
  String description;
  double prix;
  String created_at;
  String updated_at;

  Book({
    required this.id,
    required this.titre,
    required this.auteur,
    required this.nombreDePage,
    required this.description,
    required this.prix,
    required this.created_at,
    required this.updated_at
  });
}


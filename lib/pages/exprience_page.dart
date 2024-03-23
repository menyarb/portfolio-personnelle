import 'package:flutter/material.dart';
import 'package:cv/pages/homepage.dart'; // Importez la page d'accueil

class ExperiencePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Experience Page'),
        backgroundColor: Colors.blue,
        leading: IconButton(
          icon: Icon(Icons.arrow_back), // Utilisez une icône de flèche arrière
          onPressed: () {
            Navigator.pop(
                context); // Utilisez Navigator.pop pour retourner à la page précédente
          },
        ),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.zero,
        child: Container(
          color: Colors.white,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: Text(
                  "Professional Experience",
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.blue,
                  ),
                  // Votre style de texte ici
                ),
              ),
              // Vos autres widgets ici
              _itemWidget(
                "20 April, 2020",
                "• Créer une site web pour aider les étudiantes à présenter leurs projets.\n• Maîtriser le Framework Angular. \n• Maîtriser la psychologie des interfaces utilisateur (UI) et l'expérience utilisateur (UX).",
              ),
              _itemWidget(
                "20 April, 2020",
                "• Créer une site web pour aider les étudiantes à présenter leurs projets.\n• Maîtriser le Framework Angular. \n• Maîtriser la psychologie des interfaces utilisateur (UI) et l'expérience utilisateur (UX).",
              ),
              _itemWidget(
                "20 April, 2020",
                "• Créer une site web pour aider les étudiantes à présenter leurs projets.\n• Maîtriser le Framework Angular. \n• Maîtriser la psychologie des interfaces utilisateur (UI) et l'expérience utilisateur (UX).",
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _itemWidget(String title, String description) {
    // Supprimer les balises de couleur jaune de la description
    String cleanedDescription =
        description.replaceAll(RegExp(r'\u001b\[38;5;226m|\u001b\[0m'), '');

    return Container(
      width: double.infinity,
      margin: EdgeInsets.only(top: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Row(
            children: <Widget>[
              Container(
                height: 15,
                width: 15,
                margin: EdgeInsets.only(right: 20),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.grey,
                ),
              ),
              Text(
                title,
                style: TextStyle(color: Colors.blue, fontSize: 20),
              ),
            ],
          ),
          Container(
            margin: EdgeInsets.only(left: 6, top: 10),
            decoration: BoxDecoration(
              border: Border(left: BorderSide(width: 2, color: Colors.grey)),
            ),
            child: Container(
              width: double.infinity,
              margin: const EdgeInsets.only(left: 8.0),
              padding: const EdgeInsets.all(8.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(10)),
              ),
              child: Text(
                cleanedDescription, // Utilisez la description nettoyée sans les balises de couleur jaune
                style: TextStyle(
                  color: Color.fromARGB(255, 0, 0, 0),
                  fontSize: 20,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

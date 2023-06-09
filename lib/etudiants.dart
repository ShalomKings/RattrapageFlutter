import 'package:flutter/material.dart';
class Etudiant{
  final String nom;
  final String prenom;
  final String classe;
  final String matricule;
  final String email;

  Etudiant({
    required this.nom,
    required this.prenom,
    required this.classe,
    required this.matricule,
    required this.email,
  });
}

List<Etudiant> etudiants= [
  Etudiant(
    nom: 'Kings',
    prenom: 'Shalom',
    classe: 'GLRS1A',
    matricule: 'Et1',
    email: 'shalom.kings@ism.com',
  ),
  Etudiant(
    nom: 'Kings',
    prenom: 'Nosa',
    classe: 'ETSE1',
    matricule: 'Et2',
    email: 'nosa.kings@ism.com',
  ),
   Etudiant(
    nom: 'Kings',
    prenom: 'Efosa',
    classe: 'GLRS2A',
    matricule: 'Et3',
    email: 'efosa.kings@ism.com',
  ),
  Etudiant(
    nom: 'Kings',
    prenom: 'Rose',
    classe: 'ETSE2',
    matricule: 'Et4',
    email: 'rose.kings@ism.com',
  ), Etudiant(
    nom: 'Kings',
    prenom: 'Andy',
    classe: 'GLRS3A',
    matricule: 'Et5',
    email: 'andy.kings@ism.com',
  ),
  Etudiant(
    nom: 'Mahdi',
    prenom: 'Fatouma',
    classe: 'ETSE3',
    matricule: 'Et6',
    email: 'fatouma.mahdi@ism.com',
  ),
    Etudiant(
    nom: 'Ekome',
    prenom: 'Brenda',
    classe: 'CPD',
    matricule: 'Et7',
    email: 'brenda.ekome@ism.com',
  ),
    Etudiant(
    nom: 'Ndinga',
    prenom: 'Medine',
    classe: 'CDSD',
    matricule: 'Et7',
    email: 'medine.ndinga@ism.com',
  ),

];


const int  itemCount = 4;
class Etudiants extends StatelessWidget {
  const Etudiants({super.key});
  
  get px => null;

  @override
  Widget build(BuildContext context) {
    
    return ListView.builder(

      itemCount: etudiants.length,
        itemBuilder: (context, index) {
          final etudiant = etudiants[index];
          return ListTile(
            title: Text('${etudiant.nom} ${etudiant.prenom}'),
            leading: const Icon(Icons.person),
        trailing: const Icon(Icons.select_all),
        onTap:(){
          debugPrint('Shalom ${(index +1)} selected');
        },
            subtitle: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Classe: ${etudiant.classe}'),
                Text('Matricule: ${etudiant .matricule}'),
                Text('Email: ${etudiant .email}'),
              ],
            ),
          );
  },);

        }

}
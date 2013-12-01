
library Classes;
  import "dart:math";

// DÉFINITION DES CLASSES DE LA SIMULATION

class piece {
  double HeureArrivee;
  double DebutTraitement ;
  double FinTraitement ;
  double HeureSortie;
  int NbTraitement = 0;
  int ServeurTraitmement = 0;
}

class serveur {
  int No ;
  piece PieceEnTraitement ;
  double SommeTempsOccupe;
 }

class Evenement {
  double Temps;   //différent du code (a valider)
  String Libelle_Evenement ;
  int ServeurNo ;
  piece PieceTransport ;
}

class system {
  int ReplicationNo ;
  List<Evenement> ListEvenements;  //voir s'il faut NEW LIST
  List<Evenement> EvenementsTraites ;
  List<piece> file ;
  serveur serveur1;
  serveur serveur2;
  List<piece> EntitesTraitees;
  List<piece> EntitesDetruites;
  double HeureDeFin;
}

class SimulationDatas {
  int CombienEntites ;
  int CombienReplications;
  double TauxServeur1PremierPassage;
  double TauxServeur2PremierPassage;
  double TauxRetravail;
  double TauxArrivee;
  int LB_TransportRetravail;
  int UB_TransportRetravail;
  double ProbSortie;
  double ProbDestruction;
  double ProbRetravail;
  //stockage de données de la simulation
  List<system> Resultats ;
}



main() {
  var Params = new SimulationDatas() ;        //Pas sur de la traduction
    Params.Resultats = new List<system>();    //Pas sur de la traduction
  

    Params.CombienReplications = 50;
    
    Params.CombienEntites = 250 ;
    
    Params.TauxArrivee = 15.00;
    
    Params.TauxServeur1PremierPassage = 12.00;
    
    Params.TauxServeur2PremierPassage = 12.00;
    
    Params.TauxRetravail = 12.00;
    
    Params.LB_TransportRetravail = 3;
    
    Params.UB_TransportRetravail = 7;
   
    Params.ProbSortie = 72.00;
    
    Params.ProbDestruction = 8.00;
    
    Params.ProbRetravail = 20.00;
    
    //N LECTURE PARAMÈTRES
    
    
    ////////////////////////////////////////////////////////////////////////////
    
    //Éléments de simulation
    
    var GenerateurVariablesAleatoires = new Random();
    var start = DateTime; //Dim start As DateTime = Now
    
    
    for (var REP = 1; REP < Params.CombienReplications; REP++) {
     
      
      // La simulation se trouve dans cette boucle
      
      //À chaque réplication, il faut instancier un nouveau système (dans son état initial) avec des files vides et 2 serveurs neufs
      
      var Sys = new system();
      Sys.ReplicationNo = REP;
      Sys.file = new List<piece>();
      Sys.EntitesDetruites = new List<piece>();
      Sys.EntitesTraitees = new List<piece>();

      var MonServeur1 = new serveur();
      MonServeur1.No = 1;
      MonServeur1.PieceEnTraitement = null;
      Sys.serveur1 = MonServeur1;
      
      var MonServeur2 = new serveur();
      MonServeur1.No = 2;
      MonServeur1.PieceEnTraitement = null;
      Sys.serveur2 = MonServeur2;
      
      //Il faut aussi initialiser une horloge qui nous aide à gérer les événements
      double Horloge = 0.00;
      
      
      //Il faut aussi initialiser la liste d'événements et la liste d'événements traités
      Sys.ListEvenements = new List<Evenement>();
      Sys.EvenementsTraites = new List<Evenement>();

      
      //On va aussi créer la première arrivée, ce qui va déclencher le processus de simulation 
      //quand on va entrer dans la boucle ABC.J'utilise une fonction qui retourne une valeur
      //aléatoire de temps inter-arrivee selon une loi exponentielle de moyenne 1/taux. J'insère
      //ensuite cet événement dans ma liste d'événements non traites
      
      var MonPremierEvenement = new Evenement();
          MonPremierEvenement.Temps = 1;            // tentative sans nombre aléatoire
          MonPremierEvenement.Libelle_Evenement = "AP";
          Sys.ListEvenements.add(MonPremierEvenement);
     
     //il faut finalement déclarer une variable de type booléen qui permet de déclencher 
     //la sortie de la boucle ABC lorsque la Nième pièce est traitée
          
      bool Termine; 
          


        ///////////////////////////////////////////////////////////////////////////
       ////////////////////          DÉBUT BOUCLE ABC          ///////////////////
      ///////////////////////////////////////////////////////////////////////////
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
    }
    
//    Dim GenerateurVariablesAleatoires As New Random 
//    Dim start As DateTime = Now 'La seconde étape est de débuter une boucle de réplications
//    
//    For REP As Integer = 1 To Params.CombienReplications
    
    
}

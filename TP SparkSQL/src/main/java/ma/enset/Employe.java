package ma.enset;

public class Employe {
    private long id;
    private String nom;
    private long age;
    private String departement;
    private double salaire;

    public void setId(int id) {
        this.id = id;
    }

    public void setNom(String nom) {
        this.nom = nom;
    }

    public void setAge(int age) {
        this.age = age;
    }

    public void setDepartement(String departement) {
        this.departement = departement;
    }

    public void setSalaire(double salaire) {
        this.salaire = salaire;
    }

    public long getId() {
        return id;
    }

    public String getNom() {
        return nom;
    }

    public long getAge() {
        return age;
    }

    public String getDepartement() {
        return departement;
    }

    public double getSalaire() {
        return salaire;
    }

    public Employe(long id, String nom, long age, String departement, double salaire) {
        this.id = id;
        this.nom = nom;
        this.age = age;
        this.departement = departement;
        this.salaire = salaire;
    }

    public Employe() {
    }
}

class Enemigo{
  private PVector posicion; 
  private ColliderCircular collider;
  public Enemigo(PVector posicion){
    this.posicion=posicion;
    this.collider=new ColliderCircular(25, this.posicion);
  }
  public void atacar(Personaje p){
    boolean isCollide = this.collider.validarColision(p.getCollider());
    if(isCollide){
      println("HAY COLISION");
      
    }else{
      println("NO HAY COLISION");
    }
  }
  public void display(){
    circle(this.posicion.x, this.posicion.y, 50);
  }
  
  public void setPosicion(PVector posicion){
    this.posicion=posicion;
    this.collider.setPosCentro(this.posicion);
  }
}

public class Enemigo_Fuerte : MonoBehaviour
private int vida = 10
if (vida == 0) {
  Destroy(this.gameObject)
}
void onCollisionenter (Collision Aliens)
  Movimiento_Nave.Balas_en_pantalla--;
  Destroy(this.gameObject)
  Game_Manager.Enemies_alive--;

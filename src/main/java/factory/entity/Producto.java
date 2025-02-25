package factory.entity;


import jakarta.persistence.*;
import lombok.NoArgsConstructor;

@NoArgsConstructor
@Entity
@Table(name = "Producto")
public class Producto extends BaseEntity {

    @Column(name = "costoProducto", nullable = false)
    public float costoProducto;
    @Column(name = "descripcionProducto")
    public String descripcionProducto;
    @Column(name = "nombreProducto", nullable = false)
    public String nombreProducto;
    @Column(name = "precioProducto", nullable = false)
    public float precioProducto;
    @Column(name = "stockProducto", nullable = false)
    public int stockProducto;
    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "categoriaProductoId", nullable = false)
    public CategoriaProducto categoriaProducto;
    @OneToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "recetaId", nullable = false)
    public Receta receta;
}

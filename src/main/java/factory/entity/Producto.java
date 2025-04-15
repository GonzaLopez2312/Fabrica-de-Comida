package factory.entity;


import jakarta.persistence.*;
import lombok.NoArgsConstructor;

import java.time.Instant;

@NoArgsConstructor
@Entity
@Table(name = "productos")
public class Producto {

    @Id
    @GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "producto_seq_gen")
    @SequenceGenerator(name = "producto_seq_gen", sequenceName = "productos_id_seq", allocationSize = 1)
    private Long id;
    public Instant createdAt;
    public Instant updatedAt;
    public Instant deletedAt;
    public float costoProducto;
    public String descripcionProducto;
    public String nombreProducto;
    public float precioProducto;
    public int stockProducto;
    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "categoriaProductoId", nullable = false, referencedColumnName = "id")
    public CategoriaProducto categoriaProducto;
    @OneToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "recetaId", nullable = false, referencedColumnName = "id")
    public Receta receta;
}

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
    private Instant createdAt;
    private Instant updatedAt;
    private Instant deletedAt;
    private float costoProducto;
    private String descripcionProducto;
    private String nombreProducto;
    private float precioProducto;
    private int stockProducto;
    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "categoria_producto_id", nullable = false, referencedColumnName = "id")
    private CategoriaProducto categoriaProducto;
    @OneToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "receta_id", nullable = false, referencedColumnName = "id")
    private Receta receta;
}

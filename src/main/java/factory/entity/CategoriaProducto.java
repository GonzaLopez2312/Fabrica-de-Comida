package factory.entity;

import jakarta.persistence.*;
import lombok.NoArgsConstructor;

import java.time.Instant;

@NoArgsConstructor
@Entity
@Table(name = "categoria_productos")
public class CategoriaProducto{

    @Id
    @GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "categoria_producto_seq_gen")
    @SequenceGenerator(name = "categoria_producto_seq_gen", sequenceName = "categoria_productos_id_seq", allocationSize = 1)
    public String id;
    public Instant createdAt;
    public Instant deletedAt;
    public Instant updatedAt;
    private String nombreCategoriaProducto;
}

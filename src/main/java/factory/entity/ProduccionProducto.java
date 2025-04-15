package factory.entity;

import jakarta.persistence.*;
import lombok.NoArgsConstructor;

import java.time.Instant;

@NoArgsConstructor
@Entity
@Table(name = "produccion_productos")
public class ProduccionProducto{

    @Id
    @GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "produccion_producto_seq_gen")
    @SequenceGenerator(name = "produccion_producto_seq_gen", sequenceName = "produccion_productos_id_seq", allocationSize = 1)
    private Long id;
    public Instant createdAt;
    public Instant updatedAt;
    private int cantidad;
    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "productoId", nullable = false, referencedColumnName = "id")
    private Producto producto;
}

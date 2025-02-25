package factory.entity;

import jakarta.persistence.*;
import lombok.NoArgsConstructor;

@NoArgsConstructor
@Entity
@Table(name = "ProduccionProducto")
public class ProduccionProducto extends BaseEntity{

    @Column(name = "cantidad", nullable = false)
    private int cantidad;
    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "productoId", nullable = false)
    private Producto producto;
}

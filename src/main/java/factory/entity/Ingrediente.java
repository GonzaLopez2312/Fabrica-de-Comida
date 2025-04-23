package factory.entity;

import jakarta.persistence.*;
import lombok.NoArgsConstructor;

import java.time.Instant;

@NoArgsConstructor
@Entity
@Table(name = "ingredientes")
public class Ingrediente {

    @Id
    @GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "ingrediente_seq_gen")
    @SequenceGenerator(name = "ingrediente_seq_gen", sequenceName = "ingredientes_id_seq", allocationSize = 1)
    private String id;
    private Instant createdAt;
    private Instant deletedAt;
    private Instant updatedAt;
    private float cantidadIngrediente;
    private float costoIngrediente;
    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "categoriaIngredienteId", nullable = false, referencedColumnName = "id")
    private CategoriaIngrediente categoriaIngrediente;
    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "medidaId", nullable = false, referencedColumnName = "id")
    private Medida medida;
}

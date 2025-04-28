package factory.entity;

import jakarta.persistence.*;
import lombok.NoArgsConstructor;

import java.time.Instant;

@NoArgsConstructor
@Entity
@Table(name = "receta_ingredientes")
public class RecetaIngrediente {

    @Id
    @GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "receta_ingrediente_seq_gen")
    @SequenceGenerator(name = "receta_ingrediente_seq_gen", sequenceName = "receta_ingredientes_id_seq", allocationSize = 1)
    private Long id;
    private Instant createdAt;
    private Instant updatedAt;
    private Instant deletedAt;
    private float cantidadRecetaIngrediente;
    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "ingredienteId", nullable = false, referencedColumnName = "id")
    private Ingrediente ingrediente;
    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "recetaId", nullable = false, referencedColumnName = "id")
    private Receta receta;
}

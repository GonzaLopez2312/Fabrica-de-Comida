package factory.entity;

import jakarta.persistence.*;
import lombok.NoArgsConstructor;

import java.time.Instant;

@NoArgsConstructor
@Entity
@Table(name = "categoria_ingredientes")
public class CategoriaIngrediente {

    @Id
    @GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "categoria_ingrediente_seq_gen")
    @SequenceGenerator(name = "categoria_ingrediente_seq_gen", sequenceName = "categoria_ingredientes_id_seq", allocationSize = 1)
    private String id;
    private Instant createdAt;
    private Instant deletedAt;
    private Instant updatedAt;
    private String nombreCategoriaIngrediente;
}

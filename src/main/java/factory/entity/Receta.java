package factory.entity;

import jakarta.persistence.*;
import lombok.NoArgsConstructor;

import java.time.Instant;

@NoArgsConstructor
@Entity
@Table(name = "recetas")
public class Receta  {

    @Id
    @GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "receta_seq_gen")
    @SequenceGenerator(name = "receta_seq_gen", sequenceName = "recetas_id_seq", allocationSize = 1)
    private Long id;
    private Instant createdAt;
    private Instant updatedAt;
    private Instant deletedAt;
    private String descripcionReceta;
    private String nombreReceta;
    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "catalogo_id", nullable = false, referencedColumnName = "id")
    private Catalogo catalogo;
}

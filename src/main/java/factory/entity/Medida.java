package factory.entity;

import jakarta.persistence.*;
import lombok.NoArgsConstructor;

import java.time.Instant;

@NoArgsConstructor
@Entity
@Table(name = "medidas")
public class Medida {

    @Id
    @GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "medida_seq_gen")
    @SequenceGenerator(name = "medida_seq_gen", sequenceName = "medidas_id_seq", allocationSize = 1)
    private Long id;
    private Instant createdAt;
    private Instant updatedAt;
    private Instant deletedAt;
    private String abreviacionMedida;
    private String nombreMedida;
}

package factory.entity;

import jakarta.persistence.*;
import lombok.NoArgsConstructor;

import java.time.Instant;

@NoArgsConstructor
@Entity
@Table(name = "catalogos")
public class Catalogo {

    @Id
    @GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "catalogo_seq_gen")
    @SequenceGenerator(name = "catalogo_seq_gen", sequenceName = "catalogos_id_seq", allocationSize = 1)
    private Long id;
    private Instant createdAt;
    private String  nombreCatalogo;
    @OneToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "negocioId", nullable = false, referencedColumnName = "id")
    private Negocio negocio;
}

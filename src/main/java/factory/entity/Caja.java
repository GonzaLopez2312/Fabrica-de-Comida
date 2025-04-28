package factory.entity;

import jakarta.persistence.*;
import lombok.NoArgsConstructor;

import java.time.Instant;

@NoArgsConstructor
@Entity
@Table(name = "cajas")
public class Caja {

    @Id
    @GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "caja_seq_gen")
    @SequenceGenerator(name = "caja_seq_gen", sequenceName = "cajas_id_seq", allocationSize = 1)
    private Long id;
    private float totalCaja;
    private Instant updatedAt;
    @OneToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "negocio_id", nullable = false, referencedColumnName = "id")
    private Negocio negocio;
}

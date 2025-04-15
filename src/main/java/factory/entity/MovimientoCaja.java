package factory.entity;

import jakarta.persistence.*;
import lombok.NoArgsConstructor;

import java.time.Instant;

@NoArgsConstructor
@Entity
@Table(name = "movimiento_cajas")
public class MovimientoCaja{

    @Id
    @GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "movimiento_caja_seq_gen")
    @SequenceGenerator(name = "movimiento_caja_seq_gen", sequenceName = "movimientos_caja_id_seq", allocationSize = 1)
    private Long id;
    public Instant createdAt;
    public Instant updatedAt;    private float montoActualizado;
    private float montoMovimientoCaja;
    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "cajaId", nullable = false, referencedColumnName = "id")
    private Caja caja;
    @Enumerated(EnumType.STRING)
    private TipoMovimiento tipoMovimiento;
}

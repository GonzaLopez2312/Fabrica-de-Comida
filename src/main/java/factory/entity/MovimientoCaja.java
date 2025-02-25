package factory.entity;

import jakarta.persistence.*;
import lombok.NoArgsConstructor;

@NoArgsConstructor
@Entity
@Table(name = "MovimientoCaja")
public class MovimientoCaja extends BaseEntity{

    @Column(name = "montoActualizado", nullable = false)
    private float montoActualizado;
    @Column(name = "montoMovimientoCaja", nullable = false)
    private float montoMovimientoCaja;
    @ManyToOne
    @JoinColumn(name = "cajaId", nullable = false)
    private Caja caja;
    @Enumerated(EnumType.STRING)
    private TipoMovimiento tipoMovimiento;
}

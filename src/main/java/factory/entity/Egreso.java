package factory.entity;

import jakarta.persistence.*;
import lombok.NoArgsConstructor;

import java.time.Instant;

@NoArgsConstructor
@Entity
@Table(name = "egresos")
public class Egreso{

    @Id
    @GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "egreso_seq_gen")
    @SequenceGenerator(name = "egreso_seq_gen", sequenceName = "egresos_id_seq", allocationSize = 1)
    private Long id;
    public Instant createdAt;
    public Instant updatedAt;
    private String descripcionEgreso;
    private float montoEgreso;
    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "categoria_egreso_id", nullable = false, referencedColumnName = "id")
    private CategoriaEgreso categoriaEgreso;
    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "movimiento_caja_id", nullable = false, referencedColumnName = "id")
    private MovimientoCaja movimientoCaja;
}

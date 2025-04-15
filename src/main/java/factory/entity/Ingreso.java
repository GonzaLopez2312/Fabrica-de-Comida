package factory.entity;

import jakarta.persistence.*;
import lombok.NoArgsConstructor;

import java.time.Instant;

@NoArgsConstructor
@Entity
@Table(name = "ingresos")
public class Ingreso {

    @Id
    @GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "ingreso_seq_gen")
    @SequenceGenerator(name = "ingreso_seq_gen", sequenceName = "ingresos_id_seq", allocationSize = 1)
    private Long id;
    public Instant createdAt;
    public Instant updatedAt;
    private String descripcionIngreso;
    private float montoIngreso;
    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "categoriaIngresoId", nullable = false, referencedColumnName = "id")
    private CategoriaIngreso categoriaIngreso;
    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "movimientoCajaId", nullable = false, referencedColumnName = "id")
    private MovimientoCaja movimientoCaja;
}

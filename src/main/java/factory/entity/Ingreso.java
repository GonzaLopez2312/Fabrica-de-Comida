package factory.entity;

import jakarta.persistence.*;
import lombok.NoArgsConstructor;

@NoArgsConstructor
@Entity
@Table(name = "Ingreso")
public class Ingreso extends BaseEntity{

    @Column(name = "descripcionIngreso")
    private String descripcionIngreso;
    @Column(name = "montoIngreso")
    private float montoIngreso;
    @ManyToOne
    @JoinColumn(name = "categoriaIngresoId", nullable = false)
    private CategoriaIngreso categoriaIngreso;
    @ManyToOne
    @JoinColumn(name = "movimientoCajaId", nullable = false)
    private MovimientoCaja movimientoCaja;
}

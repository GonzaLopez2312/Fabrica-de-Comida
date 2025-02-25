package factory.entity;

import jakarta.persistence.*;
import lombok.NoArgsConstructor;

@NoArgsConstructor
@Entity
@Table(name = "Egreso")
public class Egreso extends BaseEntity{

    @Column(name = "descripcionEgreso")
    private String descripcionEgreso;
    @Column(name = "montoEgreso")
    private float montoEgreso;
    @ManyToOne
    @JoinColumn(name = "categoriaEgresoId", nullable = false)
    private CategoriaEgreso categoriaEgreso;
    @ManyToOne
    @JoinColumn(name = "movimientoCajaId", nullable = false)
    private MovimientoCaja movimientoCaja;
}

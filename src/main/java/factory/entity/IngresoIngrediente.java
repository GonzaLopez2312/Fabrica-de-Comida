package factory.entity;

import jakarta.persistence.*;
import lombok.NoArgsConstructor;

@NoArgsConstructor
@Entity
@Table(name = "IngresoIngrediente")
public class IngresoIngrediente extends BaseEntity{

    @Column(name = "cantidadIngresoIngrediente")
    private float cantidadIngresoIngrediente;
    @Column(name = "costoIngresoIngrediente")
    private float costoIngresoIngrediente;
    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "ingredienteId", nullable = false)
    private Ingrediente ingrediente;

}

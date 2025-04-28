package factory.entity;

import jakarta.persistence.*;
import lombok.NoArgsConstructor;

import java.time.Instant;

@NoArgsConstructor
@Entity
@Table(name = "ingreso_ingredientes")
public class IngresoIngrediente {

    @Id
    @GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "ingreso_ingrediente_seq_gen")
    @SequenceGenerator(name = "ingreso_ingrediente_seq_gen", sequenceName = "ingreso_ingredientes_id_seq", allocationSize = 1)
    private Long id;
    private Instant createdAt;
    private Instant updatedAt;
    private float cantidadIngresoIngrediente;
    private float costoIngresoIngrediente;
    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "ingrediente_id", nullable = false, referencedColumnName = "id")
    private Ingrediente ingrediente;

}

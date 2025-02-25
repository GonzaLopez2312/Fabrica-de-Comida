package factory.entity;

import jakarta.persistence.*;
import lombok.NoArgsConstructor;

@NoArgsConstructor
@Entity
@Table(name = "RecetaIngrediente")
public class RecetaIngrediente extends BaseEntity{

    @Column(name = "cantidadRecetaIngrediente")
    private float cantidadRecetaIngrediente;
    @ManyToOne
    @JoinColumn(name = "ingredienteId", nullable = false)
    private Ingrediente ingrediente;
    @ManyToOne
    @JoinColumn(name = "recetaId", nullable = false)
    private Receta receta;
}

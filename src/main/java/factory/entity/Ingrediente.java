package factory.entity;

import jakarta.persistence.*;
import lombok.NoArgsConstructor;

@NoArgsConstructor
@Entity
@Table(name = "Ingrediente")
public class Ingrediente extends BaseEntity{

    @Column(name = "cantidadIngrediente")
    private float cantidadIngrediente;
    @Column(name = "costoIngrediente")
    private float costoIngrediente;
    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "categoriaIngredienteId", nullable = false)
    private CategoriaIngrediente categoriaIngrediente;
    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "medidaId", nullable = false)
    private Medida medida;
}

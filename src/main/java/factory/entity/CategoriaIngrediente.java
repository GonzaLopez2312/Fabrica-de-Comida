package factory.entity;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.Table;
import lombok.NoArgsConstructor;

@NoArgsConstructor
@Entity
@Table(name = "CategoriaIngrediente")
public class CategoriaIngrediente extends BaseEntity{

    @Column(name = "nombreCategoriaIngrediente")
    private String nombreCategoriaIngrediente;
}

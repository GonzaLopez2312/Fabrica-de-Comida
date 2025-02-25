package factory.entity;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.Table;
import lombok.NoArgsConstructor;

@NoArgsConstructor
@Entity
@Table(name = "CategoriaIngreso")
public class CategoriaIngreso extends BaseEntity{

    @Column(name = "nombreCategoriaIngreso", nullable = false)
    private String nombreCategoriaIngreso;
}

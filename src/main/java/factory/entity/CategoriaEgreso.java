package factory.entity;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.Table;
import lombok.NoArgsConstructor;

@NoArgsConstructor
@Entity
@Table(name = "CategoriaEgreso")
public class CategoriaEgreso extends BaseEntity{

    @Column(name = "nombreCategoriaEgreso", nullable = false)
    private String nombreCategoriaEgreso;
}

package factory.entity;

import jakarta.persistence.Entity;
import jakarta.persistence.Table;
import lombok.NoArgsConstructor;

@NoArgsConstructor
@Entity
@Table(name = "CategoriaProducto")
public class CategoriaProducto extends BaseEntity {

    private String nombreCategoriaProducto;
}

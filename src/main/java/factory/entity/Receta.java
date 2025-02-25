package factory.entity;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.Table;
import lombok.NoArgsConstructor;

@NoArgsConstructor
@Entity
@Table(name = "Receta")
public class Receta extends BaseEntity {
    @Column(name = "descripcionReceta",length = 100)
    private String descripcionReceta;
    @Column(name = "nombreReceta", nullable = false)
    private String nombreReceta;
}

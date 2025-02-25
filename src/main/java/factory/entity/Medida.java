package factory.entity;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.Table;
import lombok.NoArgsConstructor;

@NoArgsConstructor
@Entity
@Table(name = "Medida")
public class Medida extends BaseEntity{

    @Column(name = "abreviacionMedida")
    private String abreviacionMedida;
    @Column(name = "nombreMedida")
    private String nombreMedida;
}

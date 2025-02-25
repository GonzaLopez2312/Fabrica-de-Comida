package factory.entity;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.Table;
import lombok.NoArgsConstructor;

@NoArgsConstructor
@Entity
@Table(name = "Caja")
public class Caja extends BaseEntity {

    @Column(name = "totalCaja")
    private float totalCaja;
}

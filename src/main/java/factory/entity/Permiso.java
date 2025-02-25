package factory.entity;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.Table;
import lombok.NoArgsConstructor;

@NoArgsConstructor
@Entity
@Table(name = "Permiso")
public class Permiso extends BaseEntity{

    @Column(name = "nombrePermiso", nullable = false)
    private String nombrePermiso;
    @Column(name = "urlPermiso", nullable = false)
    private String urlPermiso;
}

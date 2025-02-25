package factory.entity;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.Table;
import lombok.NoArgsConstructor;

@NoArgsConstructor
@Entity
@Table(name = "TipoUsuario")
public class TipoUsuario extends BaseEntity{

    @Column(name = "nombreTipoUsuario", nullable = false)
    private String nombreTipoUsuario;
}

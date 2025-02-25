package factory.entity;

import jakarta.persistence.Entity;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.Table;
import lombok.NoArgsConstructor;

@NoArgsConstructor
@Entity
@Table(name = "TipoUsuarioPermiso")
public class TipoUsuarioPermiso extends BaseEntity{

    @ManyToOne
    @JoinColumn(name = "permisoId", nullable = false)
    private Permiso permiso;
    @ManyToOne
    @JoinColumn(name = "tipoUsuarioId", nullable = false)
    private TipoUsuario tipoUsuario;
}

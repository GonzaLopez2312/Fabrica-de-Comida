package factory.entity;

import jakarta.persistence.*;
import lombok.NoArgsConstructor;

@NoArgsConstructor
@Entity
@Table(name = "Usuario")
public class Usuario extends BaseEntity{

    @Column(name = "nombreUsuario", nullable = false)
    private String nombreUsuario;
    @ManyToOne
    @JoinColumn(name = "tipoUsuarioId", nullable = false)
    private TipoUsuario tipoUsuario;
}

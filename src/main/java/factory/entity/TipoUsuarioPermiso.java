package factory.entity;

import jakarta.persistence.*;
import lombok.NoArgsConstructor;

import java.time.Instant;

@NoArgsConstructor
@Entity
@Table(name = "tipo_usuario_permisos")
public class TipoUsuarioPermiso {

    @Id
    @GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "tipo_usuario_permiso_seq_gen")
    @SequenceGenerator(name = "tipo_usuario_permiso_seq_gen", sequenceName = "tipo_usuario_permisos_id_seq", allocationSize = 1)
    private Long id;
    private Instant createdAt;
    private Instant updatedAt;
    private Instant deletedAt;
    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "permiso_id", nullable = false, referencedColumnName = "id")
    private Permiso permiso;
    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "tipo_usuario_id", nullable = false, referencedColumnName = "id")
    private TipoUsuario tipoUsuario;
}

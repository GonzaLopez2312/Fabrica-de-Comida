package factory.entity;

import jakarta.persistence.*;
import lombok.NoArgsConstructor;

import java.time.Instant;

@NoArgsConstructor
@Entity
@Table(name = "usuarios")
public class Usuario {

    @Id
    @GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "usuario_seq_gen")
    @SequenceGenerator(name = "usuario_seq_gen", sequenceName = "usuarios_id_seq", allocationSize = 1)
    private Long id;
    public Instant createdAt;
    public Instant updatedAt;
    public Instant deletedAt;
    private String nombreUsuario;
    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "tipoUsuarioId", nullable = false, referencedColumnName = "id")
    private TipoUsuario tipoUsuario;
}

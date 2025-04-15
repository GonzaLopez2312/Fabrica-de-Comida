package factory.entity;

import jakarta.persistence.*;
import lombok.NoArgsConstructor;

import java.time.Instant;

@NoArgsConstructor
@Entity
@Table(name = "permisos")
public class Permiso {

    @Id
    @GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "permiso_seq_gen")
    @SequenceGenerator(name = "permiso_seq_gen", sequenceName = "permisos_id_seq", allocationSize = 1)
    private Long id;
    public Instant createdAt;
    public Instant updatedAt;
    public Instant deletedAt;
    private String nombrePermiso;
    private String urlPermiso;
}

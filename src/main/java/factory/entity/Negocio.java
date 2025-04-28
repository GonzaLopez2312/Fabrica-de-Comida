package factory.entity;

import jakarta.persistence.*;
import lombok.NoArgsConstructor;

import java.time.Instant;

@NoArgsConstructor
@Entity
@Table(name = "negocios")
public class Negocio {

    @Id
    @GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "negocio_seq_gen")
    @SequenceGenerator(name = "negocio_seq_gen", sequenceName = "negocios_id_seq", allocationSize = 1)
    private Long id;
    private Instant createdAt;
    private Instant deletedAt;
    private String nombre;
    private String cuit;
    private String razonSocial;
    private String direccion;
}

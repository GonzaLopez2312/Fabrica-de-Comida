package factory.entity;

import jakarta.persistence.*;
import lombok.NoArgsConstructor;

import java.time.Instant;

@NoArgsConstructor
@Entity
@Table(name = "categoria_ingresos")
public class CategoriaIngreso{

    @Id
    @GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "categoria_ingreso_seq_gen")
    @SequenceGenerator(name = "categoria_ingreso_seq_gen", sequenceName = "categoria_ingresos_id_seq", allocationSize = 1)
    public String id;
    public Instant createdAt;
    public Instant deletedAt;
    public Instant updatedAt;
    private String nombreCategoriaIngreso;
}

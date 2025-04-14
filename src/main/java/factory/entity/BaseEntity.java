package factory.entity;

import jakarta.persistence.*;

import java.time.Instant;

@MappedSuperclass
public class BaseEntity {

    @Id
    @GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "menu_seq_gen")
    @SequenceGenerator(name = "menu_seq_gen", sequenceName = "menus_id_seq", allocationSize = 1)
    public String id;
    public Instant createdAt;
    public String createdBy;
    public Instant updatedAt;
    @Column(name = "lastUpdatedBy")
    public String lastUpdatedBy;
    public Instant deletedAt;
}

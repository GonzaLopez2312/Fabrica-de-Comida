package factory.entity;

import jakarta.persistence.*;

import java.time.Instant;

@MappedSuperclass
public class BaseEntity {

    @Id
    @GeneratedValue(strategy= GenerationType.IDENTITY)
    public String id;
    @Column(name = "createdAt", nullable = false)
    public Instant createdAt;
    @Column(name = "createdBy")
    public String createdBy;
    @Column(name = "updatedAt")
    public Instant updatedAt;
    @Column(name = "lastUpdatedBy")
    public String lastUpdatedBy;
    @Column(name = "deletedAt")
    public Instant deletedAt;
}

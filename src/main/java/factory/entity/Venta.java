package factory.entity;

import jakarta.persistence.*;
import lombok.NoArgsConstructor;

import java.time.Instant;

@NoArgsConstructor
@Entity
@Table(name = "ventas")
public class Venta {

    @Id
    @GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "venta_seq_gen")
    @SequenceGenerator(name = "venta_seq_gen", sequenceName = "ventas_id_seq", allocationSize = 1)
    private Long id;
    private Instant createdAt;
    private float totalVenta;
    @OneToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "facturaId", referencedColumnName = "id")
    private Factura factura;
    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "usuarioId", nullable = false, referencedColumnName = "id")
    private Usuario usuario;
    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "movimientoCajaId", nullable = false, referencedColumnName = "id")
    private MovimientoCaja movimientoCaja;
}

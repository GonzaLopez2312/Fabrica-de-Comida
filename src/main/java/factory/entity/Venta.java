package factory.entity;

import jakarta.persistence.*;
import lombok.NoArgsConstructor;

@NoArgsConstructor
@Entity
@Table(name = "Venta")
public class Venta extends BaseEntity{

    @Column(name = "totalVenta")
    private float totalVenta;
    @OneToOne
    @JoinColumn(name = "facturaId")
    private Factura factura;
    @ManyToOne
    @JoinColumn(name = "usuarioId", nullable = false)
    private Usuario usuario;
    @ManyToOne
    @JoinColumn(name = "movimientoCajaId", nullable = false)
    private MovimientoCaja movimientoCaja;
}

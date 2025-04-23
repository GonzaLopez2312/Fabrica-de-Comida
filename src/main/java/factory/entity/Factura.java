package factory.entity;

import jakarta.persistence.*;
import lombok.NoArgsConstructor;

import java.time.Instant;

@NoArgsConstructor
@Entity
@Table(name = "facturas")
public class Factura {

    @Id
    @GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "factura_seq_gen")
    @SequenceGenerator(name = "factura_seq_gen", sequenceName = "facturas_id_seq", allocationSize = 1)
    private Long id;
    private Instant createdAt;
    private String conceptoFactura;
    private String condicionVentaFactura;
    private String cuitFactura;
    private String direccionFactura;
    private String emisorFactura;
    private String iibb;
    private String puntoVentaFactura;
    private String razonSocial;
    private String receptorFactura;
    @Enumerated(EnumType.STRING)
    private TipoFactura tipoFactura;
}

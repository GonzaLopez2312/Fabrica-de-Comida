package factory.entity;

import jakarta.persistence.*;
import lombok.NoArgsConstructor;

@NoArgsConstructor
@Entity
@Table(name = "Factura")
public class Factura extends BaseEntity {

    @Column(name = "conceptoFactura")
    private String conceptoFactura;
    @Column(name = "condicionVentaFactura")
    private String condicionVentaFactura;
    @Column(name = "cuitFactura")
    private String cuitFactura;
    @Column(name = "direccionFactura")
    private String direccionFactura;
    @Column(name = "emisorFactura")
    private String emisorFactura;
    @Column(name = "iibb")
    private String iibb;
    @Column(name = "puntoVentaFactura")
    private String puntoVentaFactura;
    @Column(name = "razonSocial")
    private String razonSocial;
    @Column(name = "receptorFactura")
    private String receptorFactura;
    @Enumerated(EnumType.STRING)
    private TipoFactura tipoFactura;
}

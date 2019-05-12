Feature: Revisar estado de cuenta

Scenario: Como usuario existente y habilitado del banco, que tiene cuenta en el
banco mas de 1 semana reviso estado de cuenta.

Given Me autentiqué con rut valido
And  Ingrese los ultimos 4 digitos de mi rut
When Selecciono boton enviar
And Tengo instalado pdf read
Then Obtengo estado de cuenta en pdf
And El estado de cuenta contiene Nombre del titular y número de cuenta
And El estado de cuenta contiene Fecha de emisión
And El estado de cuenta contiene moneda
And El estado de cuenta contiene Fecha desde y hasta
And El estado de cuenta contiene movimientos del producto bancario
And El estado de cuenta contiene actividades del producto bancario
And El estado de cuenta contiene consumos del producto bancario
And El estado de cuenta contiene montos a pagar del producto bancario

Scenario: Como usuario existente y habilitado del banco, que tiene cuenta en el
banco mas de 2 meses sin movimientos reviso estado de cuenta.

Given Me autentiqué con rut valido
And  Ingrese los ultimos 4 digitos de mi rut
When Selecciono boton enviar
And Tengo instalado pdf read
Then Obtengo estado de cuenta en pdf
And El estado de cuenta contiene Nombre del titular y número de cuenta
And El estado de cuenta contiene Fecha de emisión
And El estado de cuenta contiene moneda
And El estado de cuenta contiene Fecha desde y hasta
And El estado de cuenta contiene movimientos del producto bancario
And El estado de cuenta contiene actividades del producto bancario
And El estado de cuenta contiene consumos del producto bancario
And El estado de cuenta contiene montos a pagar del producto bancario

Scenario: Como usuario existente y habilitado del banco, que tiene cuenta en el
banco. 3 meses sin movimientos, reviso estado de cuenta.

Given Me autentiqué con rut valido
And  Ingrese los ultimos 4 digitos de mi rut
When Selecciono boton enviar
And Tengo instalado pdf read
Then Obtengo estado de cuenta en pdf
And El estado de cuenta contiene Nombre del titular y número de cuenta
And El estado de cuenta contiene Fecha de emisión
And El estado de cuenta contiene moneda
And El estado de cuenta contiene Fecha desde y hasta
And El estado de cuenta contiene movimientos del producto bancario
And El estado de cuenta contiene actividades del producto bancario
And El estado de cuenta contiene consumos del producto bancario
And El estado de cuenta contiene montos a pagar del producto bancario


Scenario: Como usuario existente y habilitado del banco, que tiene cuenta en el
banco. Tiene depositos en pesos, dolares y reales, reviso estado de cuenta.

Given Me autentiqué con rut valido
And  Ingrese los ultimos 4 digitos de mi rut
When Selecciono boton enviar
And Tengo instalado pdf read
Then Obtengo estado de cuenta en pdf
And El estado de cuenta contiene Nombre del titular y número de cuenta
And El estado de cuenta contiene Fecha de emisión
And El estado de cuenta contiene monedas pesos, reales y dolares
And El estado de cuenta contiene Fecha desde y hasta
And El estado de cuenta contiene movimientos del producto bancario
And El estado de cuenta contiene actividades del producto bancario
And El estado de cuenta contiene consumos del producto bancario
And El estado de cuenta contiene montos a pagar del producto bancario

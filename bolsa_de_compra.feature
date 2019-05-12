Feature: Bolsa de compra

Scenario: Como usuario existente y habilitado de la pagina web del retail, valido
la bolsa de compra.

Given Me autentico con claves válidas en la web del retail
And Busco producto para agregar a la bolsa
And Agrego 10 unidades
When Selecciono Agregar a la Bolsa
Then Aparece ventana pop up con resumen de lo agregado
And Sub total de productos
And Ver Bolsa de Compras
And Link Seguir comprando
And valor con tarjeta de retail y precio normal

Scenario: Como usuario existente y habilitado de la pagina web del retail, valido
la bolsa de compra de producto sin stock

Given Me autentico con claves válidas en la web del retail
And Busco producto para agregar a la bolsa
And Agrego 10 unidades
When Selecciono Agregar a la Bolsa
Then Aparece ventana pop up informado que producto no tiene stock
And En el mismo pop up aparece link seguir comprando
And Ver Bolsa de Compras
And Link Seguir comprando
And valor con tarjeta de retail y precio normal

Scenario: Como usuario existente y habilitado de la pagina web del retail, valido
total de productos de la bolsa de compra

Given Me autentico con claves válidas en la web del retail
And De la sesion anterior tenia 5 productos en la bolsa
And Agrego 20 unidades
When Selecciono Agregar a la Bolsa
Then Aparece ventana pop up resumen de lo agregado
And En el mismo pop up aparece link seguir comprando
And Ver Bolsa de Compras
And Link Seguir comprando
And valor con tarjeta de retail y precio normal

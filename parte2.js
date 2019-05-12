import { Selector } from 'testcafe';

fixture `New Fixture`
    .page `www.google.cl`;

test('New Test', async t => {
    await t
        .typeText(Selector('#tsf').find('[name="q"]'), 'tottus sucursales')
        .pressKey('enter')
        .click(Selector('.wLAgVc').nth(2).find('div').withText('SITIO WEB'))
        .click(Selector('#new_tottus_nav_cliente_recetas').find('a').find('img'))
        .click(Selector('button').withText('ALTA'))
        .click(Selector('h3').withText('CORONA DE ROLLITOS DE CANELA'))
        .drag(Selector().find('p').withText('125g azúcar rubia'), 44, -5, {
            offsetX: 56,
            offsetY: 13
        })
        .drag(Selector('.divRecipe.mobile').find('p').withText('15g canela en polvo'), 50, 2, {
            offsetX: 46,
            offsetY: 15
        });
});

include(`/usr/share/doc/m4/examples/capitalize2.m4')dnl
define(`ICON_LABEL',`label=<
		<table cellspacing="0" border="0" cellborder="1">
			<tr><td><img src="icons/$1" /></td></tr>
			<tr><td>$2</td></tr>
		</table>
	>')dnl
define(`ICON_NODE3', `$1[shape=plain ICON_LABEL(`$2', `$3')];')dnl
define(`ICON_NODE2', `ICON_NODE3($1, `translit(capitalize($2), ` ', `_').png', $2)')dnl
define(`ICON_NODE1', `ICON_NODE2(downcase(translit($1, ` ', `_')), $1)')dnl

strict digraph {
	// node definitions
	// test icon label macro
	copper_ore[shape=plain ICON_LABEL(`Copper_Ore.png', `Copper Ore')];
	//remaining definitions
	ICON_NODE1(`Copper Ingot')
	ICON_NODE1(`Iron Ore')
	ICON_NODE1(`Magnet')
	ICON_NODE1(`Iron Ingot')
	ICON_NODE1(`Gear')
	ICON_NODE1(`Steel')
	ICON_NODE3(`belt_mk1', `Conveyor_Belt_Mk.I.png', `Belt.I')
	ICON_NODE3(`belt_mk2', `Conveyor_Belt_Mk.II.png', `Belt.II')
	ICON_NODE1(`Magnetic Coil')
	ICON_NODE1(`Solar Panel')
	ICON_NODE1(`Prism')
	ICON_NODE1(`Plasma Exciter')
	ICON_NODE1(`Tesla Tower')
	ICON_NODE1(`Electric Motor')
	ICON_NODE1(`Wireless Power Tower')
	ICON_NODE1(`Crude Oil')
	ICON_NODE1(`Stone')
	ICON_NODE1(`Water')
	ICON_NODE1(`Sulfuric Acid')
	ICON_NODE2(`graphite', `Energetic Graphite')
	ICON_NODE1(`Graphene')
	ICON_NODE1(`Hydrogen')
	ICON_NODE1(`Refined Oil')
	ICON_NODE1(`Circuit Board')
	ICON_NODE3(`sorter_mk1', `Sorter_Mk.I.png', `Sorter.I')
	ICON_NODE3(`sorter_mk2', `Sorter_Mk.II.png', `Sorter.II')
	
	// graph
	crude_oil->hydrogen
	crude_oil->refined_oil
	stone->sulfuric_acid
	refined_oil->sulfuric_acid
	water->sulfuric_acid
	graphite->graphene
	sulfuric_acid->graphene
	copper_ore->copper_ingot
	copper_ingot->circuit_board
	iron_ore->iron_ingot
	iron_ingot->circuit_board
	circuit_board->solar_panel
	iron_ingot->gear
	iron_ingot->steel
	iron_ingot->belt_mk1
	gear->belt_mk1
	belt_mk1->belt_mk2
	circuit_board->sorter_mk1
	iron_ore->magnet
	magnet->magnetic_coil
	copper_ingot->magnetic_coil
	prism->plasma_exciter
	plasma_exciter->wireless_power_tower
	tesla_tower->wireless_power_tower
	magnetic_coil->tesla_tower
	magnetic_coil->electric_motor
	electric_motor->sorter_mk2
	sorter_mk1->sorter_mk2
}

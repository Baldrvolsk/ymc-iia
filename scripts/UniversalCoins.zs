import mods.nei.NEI;
import mods.gregtech.Assembler;
import minetweaker.item.IItemStack;
import minetweaker.item.IIngredient;

// Hide Recipes
NEI.hide(<universalcoins:atm>); //Universal Bank ATM
NEI.hide(<universalcoins:item.catalog>); //Selling Catalog
NEI.hide(<universalcoins:power_receiver>); //Power Receiver
NEI.hide(<universalcoins:power_transmitter>); //Power Transmitter
NEI.hide(<universalcoins:standing_ucsign>); //tile.standing_ucsign.name
NEI.hide(<universalcoins:wall_ucsign>); //tile.wall_ucsign.name
NEI.hide(<universalcoins:signal_block>); //Redstone Signal Generator
NEI.hide(<universalcoins:trade_station>); //Universal Trade Station

// Packager
recipes.remove(<universalcoins:packager>);
Assembler.addRecipe(<universalcoins:packager>, [<gregtech:gt.blockmachines:401>, <gregtech:gt.metaitem.01:32490>, <gregtech:gt.metaitem.01:32403> * 16], <liquid:molten.redstone> * 576, 300, 30);

// Ender Safe
recipes.remove(<universalcoins:safe>);
Assembler.addRecipe(<universalcoins:safe>, [<ore:craftingSafe>, <universalcoins:item.ender_card>], <liquid:molten.enderium> * 144, 400, 16);

// Vending Frame
recipes.remove(<universalcoins:vendor_frame>);
val BL = <BiblioCraft:BiblioLabel:*>;
recipes.addShaped(<universalcoins:vendor_frame>, [
	[BL, BL, BL],
	[BL, <gregtech:gt.blockcasings:1>, BL],
	[<minecraft:planks:*>, <minecraft:chest>, <minecraft:planks:*>]
]);

// Stone Vending Block
var Blocks = [<universalcoins:vendor>, <universalcoins:vendor:1>, <universalcoins:vendor:2>, <universalcoins:vendor:3>, <universalcoins:vendor:4>, <universalcoins:vendor:5>, <universalcoins:vendor:6>, <universalcoins:vendor:7>, <universalcoins:vendor:8>, <universalcoins:vendor:9>, <universalcoins:vendor:10>, <universalcoins:vendor:11>, <universalcoins:vendor:12>, <universalcoins:vendor:13>, <universalcoins:vendor:14>, <universalcoins:vendor:15>] as IItemStack[];

var Mat = [<minecraft:stone:*>, <minecraft:cobblestone:*>, <minecraft:stonebrick:*>, <minecraft:planks:*>, <minecraft:crafting_table:*>, <minecraft:gravel:*>, <minecraft:jukebox:*>, <minecraft:sandstone:*>, <minecraft:gold_ingot>, <minecraft:iron_ingot>, <minecraft:brick_block:*>, <minecraft:mossy_cobblestone:*>, <minecraft:obsidian:*>, <minecraft:diamond>, <minecraft:emerald>, <ore:gemLapis>] as IIngredient[];

val CG = <EnderIO:blockFusedQuartz:1>;

for i, B in Blocks {
	recipes.remove(B);
	val M = Mat[i];
	recipes.addShaped(B, [
	[CG, CG, CG],
	[CG, <gregtech:gt.blockcasings:1>, CG],
	[M, <minecraft:chest>, M]
]);
}
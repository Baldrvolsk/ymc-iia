import mods.gregtech.CuttingSaw;
import mods.gregtech.Pulverizer;
import minetweaker.item.IItemStack;

var meta = [0, 1, 2, 3, 4, 5, 6, 7] as int[];
var slabs = [
    <UndergroundBiomes:igneousStoneBrickHalfSlab>,
    <UndergroundBiomes:metamorphicStoneBrickHalfSlab>,
    <UndergroundBiomes:igneousStoneHalfSlab>,
    <UndergroundBiomes:metamorphicStoneHalfSlab>,
    <UndergroundBiomes:igneousCobblestoneHalfSlab>,
    <UndergroundBiomes:metamorphicCobblestoneHalfSlab>,
    <UndergroundBiomes:sedimentaryStoneHalfSlab>
] as IItemStack[];
var blocks = [
    <UndergroundBiomes:igneousStoneBrick>,
    <UndergroundBiomes:metamorphicStoneBrick>,
    <UndergroundBiomes:igneousStone>,
    <UndergroundBiomes:metamorphicStone>,
    <UndergroundBiomes:igneousCobblestone>,
    <UndergroundBiomes:metamorphicCobblestone>,
    <UndergroundBiomes:sedimentaryStone>
] as IItemStack[];

for i in meta {
    for j, _ in blocks {
        var slab = slabs[j].definition.makeStack(i);
        var block = blocks[j].definition.makeStack(i);
	recipes.remove(slab);
        CuttingSaw.addRecipe([slab * 2], block, null, 25, 8);
	recipes.addShaped(slab * 2, [[<ore:craftingToolSaw>, block]]);
    }
}



// Limestone, Chalk & Shale processing
Pulverizer.addRecipe([<gregtech:gt.metaitem.01:3823>, <gregtech:gt.metaitem.01:2805>, <gregtech:gt.metaitem.01:917>], <UndergroundBiomes:sedimentaryStone:1>, [10000, 1000, 200], 400, 2);
Pulverizer.addRecipe([<gregtech:gt.metaitem.01:3823>, <gregtech:gt.metaitem.01:2624>, <gregtech:gt.metaitem.01:2908>], <UndergroundBiomes:sedimentaryStone:0>, [10000, 500, 500], 400, 2);
Pulverizer.addRecipe([<gregtech:gt.metaitem.01:2805>, <gregtech:gt.metaitem.01:1846>, <gregtech:gt.metaitem.01:1901>, <gregtech:gt.metaitem.01:2523>], <UndergroundBiomes:sedimentaryStone:2>, [10000, 2000, 2000, 2000], 400, 2);

//Greywacke - Biotite, Quartz, Pyrite
mods.gregtech.Pulverizer.addRecipe([<gregtech:gt.metaitem.01:2848>, <gregtech:gt.metaitem.01:2523>,
<gregtech:gt.metaitem.01:2834>], <UndergroundBiomes:sedimentaryStone:6>, [10000, 800, 100], 400, 2);

//Dolomite - Dolomite Dust, Clay, Iron
mods.gregtech.Pulverizer.addRecipe([<gregtech:gt.metaitem.01:2914>, <gregtech:gt.metaitem.01:2805>,
<gregtech:gt.metaitem.01:32>], <UndergroundBiomes:sedimentaryStone:5>, [10000, 1000, 200], 400, 2);

//Chert - SiO2, Flint, Clay
mods.gregtech.Pulverizer.addRecipe([<gregtech:gt.metaitem.01:2837>, <minecraft:flint>,
<gregtech:gt.metaitem.01:1805>], <UndergroundBiomes:sedimentaryStone:7>, [10000, 5000, 500], 400, 2);

//Siltstone - Quartz, Potassium Feldspar, Banded Iron
mods.gregtech.Pulverizer.addRecipe([<gregtech:gt.metaitem.01:2523>, <gregtech:gt.metaitem.01:1847>,
<gregtech:gt.metaitem.01:917>], <UndergroundBiomes:sedimentaryStone:3>, [10000, 2000, 200], 400, 2);
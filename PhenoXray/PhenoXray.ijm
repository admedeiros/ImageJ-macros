//Macro PhenoXray 2.0 – 27.04.19 by Medeiros, A.D.
run("Set Scale...", "distance=59.4013  known=1 pixel=1 unit=mm global");
run("8-bit");
sourceTitle=getTitle();
run("Duplicate...", " ");
setAutoThreshold("Yen dark");
//run("Threshold...");
run("Convert to Mask");
run("Set Measurements...", "area mean standard modal min centroid center perimeter bounding fit shape feret's integrated median skewness kurtosis area_fraction stack limit display add redirect=["+ sourceTitle   
+"] decimal=3");
run("Analyze Particles...", "size=3.00-12.00  show=[Overlay Masks] display exclude clear include");
IJ.renameResults(getTitle());
saveAs("Results","C:\\Users\\Usuario\\Desktop\\2\\ "+getTitle+".txt");

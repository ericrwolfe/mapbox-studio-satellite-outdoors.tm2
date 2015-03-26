// Hillshading //

/*#hillshade {
  ::0[zoom<=13],
  ::1[zoom=14],
  ::2[zoom>=15][zoom<=16],
  ::3[zoom>=17][zoom<=18],
  ::4[zoom>=19] {
    comp-op: hard-light;
    polygon-clip: false;
    image-filters-inflate: true;
    [class='shadow'] {
      polygon-fill: #216;
      polygon-comp-op: multiply;
      [zoom>=0][zoom<=3] { polygon-opacity: 0.10; }
      [zoom>=4][zoom<=5] { polygon-opacity: 0.08; }
      [zoom>=6][zoom<=14] { polygon-opacity: 0.06; }
      [zoom>=15][zoom<=16] { polygon-opacity: 0.04; }
      [zoom>=17][zoom<=18] { polygon-opacity: 0.02; }
      [zoom>=18] { polygon-opacity: 0.01; }
    }
    //[class='highlight'] {
    //  polygon-fill: #ffd;
    //  polygon-opacity: 0.2;
    //  [zoom>=15][zoom<=16] { polygon-opacity: 0.15; }
    //  [zoom>=17][zoom<=18] { polygon-opacity: 0.10; }
    //  [zoom>=18] { polygon-opacity: 0.05; }
    //}
  }
  ::1 { image-filters: agg-stack-blur(2,2); }
  ::2 { image-filters: agg-stack-blur(8,8); }
  ::3 { image-filters: agg-stack-blur(16,16); }
  ::4 { image-filters: agg-stack-blur(32,32); }
}
/**/
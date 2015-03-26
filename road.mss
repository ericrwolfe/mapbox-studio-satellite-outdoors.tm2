// -- roads ---------------------------------

#bridge { opacity: .5; }
#road { opacity:.6; }
#tunnel { opacity: 0.13; }

#bridge,
#road[zoom>7],
#tunnel {
  ['mapnik::geometry_type'=2] {
    line-cap: round;
    line-join: round;
    line-gamma: 1.2;
    line-color: @road_fill;
    line-width: 1;
    [class='motorway'] {
      line-width:1;
      [zoom>12] { line-width: 1.5; }
      [zoom=15] { line-width: 3; }
      [zoom=16] { line-width: 6; }
      [zoom=17] { line-width: 8; }
      [zoom>17] { line-width: 12; }
    }
    [class='motorway_link'] {
      line-width: .5;
      [zoom=12] { line-width: .5; }
      [zoom=13] { line-width: .75; }
      [zoom=14] { line-width: 1; }
      [zoom=15] { line-width: 2; }
      [zoom=16] { line-width: 3; }
      [zoom=17] { line-width: 4; }
      [zoom>17] { line-width: 6; }
    }
    [class='main'] {
      line-width: .25;
      line-color: @road_fill;
      [zoom=12] { line-width: .5; }
      [zoom=13] { line-width: .75; }
      [zoom=14] { line-width: 1; }
      [zoom=15] { line-width: 2; }
      [zoom=16] { line-width: 3; }
      [zoom=17] { line-width: 6; }
      [zoom>17] { line-width: 10; }
    }
    [class='street'],
    [class='street_limited'] {
      line-width: .1;
      [zoom=14] { line-width: .5; }
      [zoom=15] { line-width: 1; }
      [zoom=16] { line-width: 3; }
      [zoom=17] { line-width: 6; }
      [zoom>=18] { line-width: 10; }
    }
    [class='street_limited'] {
      line-dasharray: 6, 2;
      line-cap: butt;
    }
    [zoom>15][class='major_rail'],[zoom>15][class='minor_rail'] {
      line-color: @road_fill;
      line-cap: butt;
      line-dasharray:2,2;
      [zoom=16] { line-width: 2; }
      [zoom=17] { line-width: 3; }
      [zoom=18] { line-width: 4; }
      [zoom>18] { line-width: 5; }
    }
    [class='service'],
    [class='driveway']{
      ::case[zoom>=14] {
        line-color: #000;
        line-opacity: 0.4;
        line-dasharray: 8,6;
        #road { line-cap: round; }
        #tunnel { line-dasharray: 3,3; }
        [zoom>=15] { line-width: 4; }
        [zoom>=16] { line-width: 4; }
        [zoom>=17] { line-width: 5; }
        [zoom>=18] { line-width: 6; }
      }
      ::fill[zoom>=14] {
        line-color: @road_fill;
        line-opacity: 0.8;
        line-dasharray: 8,6;
        #road { line-cap: round; }
        [zoom>=15] { line-width: 2; }
        [zoom>=16] { line-width: 2; }
        [zoom>=17] { line-width: 3; }
        [zoom>=18] { line-width: 4; }
      }
    }
    [class='path'] {
      line-width:2;
      line-dasharray: 3,4;
      line-cap: round;
      ::wht,
      ::blk {
        line-color: #000;
        line-opacity: 0.4;
        line-width:4;
        line-dasharray: 3,4;
        line-cap: round;
        line-clip: false;
      }
      ::blk {
        //line-offset: -1;
        line-color: #fff;
        line-opacity: 0.8;
        line-width:2;
        line-dasharray: 3,4;
        line-cap: round;
      }
    }
  }
}

#road {
  [class='path'][zoom<=14] {
  line-width:2;
      line-dasharray: 3,4;
    line-color: red;
        line-opacity: 0.8;
      line-cap: round;
    }
}

// one way arrows

#road,
#bridge,
#tunnel {
  ['mapnik::geometry_type'=2][zoom>=16][oneway=1] {
    [class='motorway_link'],
    [class='main'],
    [class='street'],
    [class='street_limited'] {
      marker-file: url(img/icon/oneway.svg);
      marker-allow-overlap: true;
      marker-ignore-placement: true;
      marker-placement:line;
      marker-max-error: 0.5;
      marker-spacing: 200;
      marker-fill: #000;
      [zoom=16] { marker-transform: "scale(0.75)"; }
      [zoom=17] { marker-transform: "scale(1)"; }
      [zoom>17] { marker-transform: "scale(1.25)"; }
    }
  }
}
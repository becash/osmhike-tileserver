/*
    This file is taken and adapted from
    https://github.com/gravitystorm/openstreetmap-carto/blob/1bed8cc96a99105ad446fbcbb9fb00a23f44bfcc/placenames.mss.
    Original file licensed under CC0 public domain.

    It has then been adapted for Osmhike
*/

#country-names {
  [zoom >= 3][zoom < 5][way_pixels > 1000],
  [zoom >= 5][way_pixels < 360000] {
    text-name: "[name]";
    text-face-name: @sans_bold;
    text-size: 10;
    text-wrap-width: 35; // 3.5 em
    text-line-spacing: -1.5; // -0.15 em
    text-margin: 7.0; // 0.7 em

    text-placement-type: simple;
    text-placements: "C,N,S,E,W,NW,NE,SE";
    text-dx: 25;
    text-dy: 20;

    [zoom >= 4] {
      text-size: 11;
      text-wrap-width: 40; // 3.6 em
      text-line-spacing: -1.4; // -0.13 em
      text-margin: 7.7; // 0.7 em
    }
    [zoom >= 5] {
      text-size: 12;
      text-wrap-width: 45; // 3.8 em
      text-line-spacing: -1.2; // -0.10 em
      text-margin: 8.4; // 0.7 em
    }
    [zoom >= 7] {
      text-size: 13;
      text-wrap-width: 50; // 3.8 em
      text-line-spacing: -1.0; // -0.08 em
      text-margin: 9.1; // 0.7 em
    }
    [zoom >= 10] {
      text-size: 14;
      text-wrap-width: 55; // 3.9 em
      text-line-spacing: -0.7; // -0.05 em
    }
    text-fill: @country_text;
    text-face-name: @sans;
    text-halo-fill: @country_halo;
    text-halo-radius: @standard-halo-radius * 1.5;
    text-placement: interior;
    text-character-spacing: 0.5;
  }
}


#capital-names {
  [zoom >= 4][zoom < 8][population > 600000],
  [zoom >= 5][zoom < 8] {
    shield-file: url('symbols/capital.svg');
    shield-text-dx: 6;
    shield-text-dy: 6;
    shield-name: '[name]';
    shield-face-name: @sans;
    shield-fill: @placenames;
    shield-size: 11;
    shield-wrap-width: 30; // 2.7 em
    shield-line-spacing: -1.6; // -0.15 em
    shield-margin: 7.7; // 0.7 em
    shield-halo-fill: @city_halo;
    shield-halo-radius: @standard-halo-radius * 1.5;
    shield-placement-type: simple;
    shield-placements: 'S,N,E,W';
    [dir = 1] {
      shield-placements: 'N,S,E,W';
    }
    shield-unlock-image: true;

    [zoom >= 5] {
      shield-wrap-width: 45; // 4.1 em
      shield-line-spacing: -1.1; // -0.10 em
    }
    [zoom >= 6] {
      shield-size: 15;
      shield-wrap-width: 60; // 5.0 em
      shield-line-spacing: -0.6; // -0.05 em
      shield-margin: 8.4; // 0.7 em
    }
    [zoom >= 7] {
      shield-text-dx: 7;
      shield-text-dy: 7;
    }
  }
  [zoom >= 8] {
    text-name: '[name]';
    text-face-name: @sans;
    text-fill: @placenames;
    text-size: 13;
    text-wrap-width: 65; // 5.0 em
    text-line-spacing: -0.65; // -0.05 em
    text-margin: 9.1; // 0.7 em
    text-halo-fill: @city_halo;
    text-halo-radius: @standard-halo-radius * 1.5;

    [zoom >= 10] {
      text-size: 14;
      text-wrap-width: 70; // 5.0 em
      text-line-spacing: -0.70; // -0.05 em
      text-margin: 9.8; // 0.7 em
    }
    [zoom >= 11] {
      text-size: 15;
      text-wrap-width: 75; // 5.0 em
      text-line-spacing: -0.75; // -0.05 em
      text-margin: 10.5; // 0.7 em
    }
  }
}


#state-names {
  [zoom >= 5][zoom < 7][way_pixels > 3000],
  [zoom >= 7][way_pixels > 3000][way_pixels < 196000] {
    text-name: "[name]";
    text-size: 10;
    text-wrap-width: 30; // 3.0 em
    text-line-spacing: -1.5; // -0.15 em
    text-margin: 7.0; // 0.7 em
    text-fill: @state_text;
    text-face-name: @sans_italic;
    text-halo-fill: @state_halo;
    text-halo-radius: @standard-halo-radius * 1.5;
    text-placement: interior;

    text-placement-type: simple;
    text-placements: "C,N,S,E,W,NW,NE,SE";
    text-dx: 25;
    text-dy: 20;

    [zoom >= 7] {
      text-size: 11;
      text-wrap-width: 50; // 4.5 em
      text-line-spacing: -0.6; // -0.05 em
      text-margin: 7.7; // 0.7 em
    }
  }
}

#placenames-medium::high-importance {
  [category = 1][score >= 400000][zoom < 14] {
    [zoom >= 5][zoom < 8] {
      shield-file: url('symbols/townbig.svg');
      shield-text-dx: 4;
      shield-text-dy: 4;
      shield-name: '[name]';
      shield-face-name: @sans;
      shield-fill: @placenames;
      shield-size: 15;
      shield-wrap-width: 30; // 2.7 em
      shield-line-spacing: -1.65; // -0.15 em
      shield-margin: 7.7; // 0.7 em
      shield-halo-fill: @city_halo;
      shield-halo-radius: @standard-halo-radius * 1.5;
      shield-placement-type: simple;
      shield-placements: 'S,N,E,W';
      [dir = 1] {
        shield-placements: 'N,S,E,W';
      }
      shield-unlock-image: true;

      [zoom >= 5] {
        shield-wrap-width: 45; // 4.1 em
        shield-line-spacing: -1.1; // -0.10 em
      }
      [zoom >= 6] {
        shield-wrap-width: 60; // 5.0 em
        shield-line-spacing: -0.6; // -0.05 em


        shield-text-dx: 5;
        shield-text-dy: 5;
      }

    }
    [zoom >= 8] {
      text-name: '[name]';
      text-face-name: @sans;
      text-fill: @placenames;
      text-size: 13;
      text-wrap-width: 65; // 5.0 em
      text-line-spacing: -0.65; // -0.05 em
      text-margin: 9.1; // 0.7 em
      text-halo-fill: @city_halo;
      text-halo-radius: @standard-halo-radius * 1.5;
      text-placement-type: simple;
      // FIXME: https://github.com/mapnik/mapnik/commit/4eae86b7bc750a08a7ab103a780d6b4bf951e1b1
      // text-placements: "C,N,S,E,W,NW,NE,SE";
      text-placements: "N,S,E,W,NW,NE,SE";
      text-dx: 25;
      text-dy: 20;

      [zoom >= 10] {
        text-size: 14;
        text-wrap-width: 70; // 5.0 em
        text-line-spacing: -0.7; // -0.05 em
        text-margin: 9.8; // 0.7 em
      }
      [zoom >= 11] {
        text-size: 15;
        text-wrap-width: 75; // 5.0 em
        text-line-spacing: -0.75; // -0.05 em
        text-margin: 10.5; // 0.7 em
      }
    }
  }
}

#placenames-medium::medium-importance {
  [category = 1][score < 400000][zoom < 15] {
    [zoom >= 6][zoom < 8][score >= 70000],
    [zoom >= 7][zoom < 8] {
      shield-file: url('symbols/town.svg');
      shield-text-dx: 4;
      shield-text-dy: 4;
      shield-name: "[name]";
      shield-size: 11;
      shield-fill: @placenames;
      shield-face-name: @sans;
      shield-halo-fill: @city_halo;
      shield-halo-radius: @standard-halo-radius * 1.5;
      shield-wrap-width: 30; // 3.0 em
      shield-line-spacing: -1.5; // -0.15 em
      shield-margin: 7.0; // 0.7 em
      shield-placement-type: simple;
      shield-placements: 'S,N,E,W';
      [dir = 1] {
        shield-placements: 'N,S,E,W';
      }
      shield-unlock-image: true;

    }
    [zoom >= 8] {
      text-name: "[name]";
      text-size: 10;
      text-fill: @placenames;
      text-face-name: @sans;
      text-halo-fill: @city_halo;
      text-halo-radius: @standard-halo-radius * 1.5;
      text-wrap-width: 40; // 4.0 em
      text-line-spacing: -1.0; // -0.10 em
      text-margin: 7.0; // 0.7 em
      text-placement-type: simple;
      // FIXME: https://github.com/mapnik/mapnik/commit/4eae86b7bc750a08a7ab103a780d6b4bf951e1b1
      // text-placements: "C,N,S,E,W,NW,NE,SE";
      text-placements: "N,S,E,W,NW,NE,SE";
      text-dx: 25;
      text-dy: 20;
      [zoom >= 9] {
        text-size: 12;
        text-wrap-width: 60; // 5.0 em
        text-line-spacing: -0.6; // -0.05 em
        text-margin: 8.4; // 0.7 em
      }
      [zoom >= 10] {
        text-size: 13;
        text-wrap-width: 65; // 5.0 em
        text-line-spacing: -0.65; // -0.05 em
        text-margin: 9.1; // 0.7 em
      }
      [zoom >= 11] {
        text-size: 14;
        text-wrap-width: 70; // 5.0 em
        text-line-spacing: -0.7; // -0.05 em
        text-margin: 9.8; // 0.7 em
      }
      [zoom >= 14] {
        text-size: 15;
        text-wrap-width: 75; // 5.0 em
        text-line-spacing: -0.7; // -0.05 em
        text-margin: 10.5; // 0.7 em
      }
    }
  }
}



#placenames-medium::low-importance {
    [category = 2]{
        [zoom >= 9][zoom <=12]{
          shield-file: url('symbols/town.svg');
          shield-text-dx: 15;
          shield-text-dy: 10;
          shield-name: [name];
          shield-size: 12;
          shield-fill: @placenames;
          shield-face-name: @sans;
          shield-halo-fill: @city_halo;
          shield-halo-radius: @standard-halo-radius * 1.5;
          shield-wrap-width: 45; 
          shield-line-spacing: -0.8;
          shield-margin: 4.0; 
          shield-placement-type: simple;
          shield-placements: "N,S,E,SW,NW,NE,SE";
          //shield-avoid-edges: true;  // do NOT use : hides places whose center is on tile boundary , whatever the position of text !
          [dir = 1] {
            shield-placements: 'N,S,E,W';
          }
          shield-unlock-image: true;
        }


      [zoom >= 13][zoom < 16] {
          text-name: "[name]";
          text-size: 10;
          text-fill: @placenames;
          text-face-name: @sans;
          text-halo-fill: @city_halo;
          text-halo-radius: @standard-halo-radius * 1.5;
          text-wrap-width: 45; // 4.5 em
          text-line-spacing: -0.8; // -0.08 em
          text-margin: 4; // 0.7 em
          text-placement-type: simple;
          text-avoid-edges: true;
          // FIXME: https://github.com/mapnik/mapnik/commit/4eae86b7bc750a08a7ab103a780d6b4bf951e1b1
          // text-placements: "C,N,S,E,W,NW,NE,SE";
          text-placements: "N,S,E,SW,NW,NE,SE";
          text-dx: 15; //25;
          text-dy: 10; //20;
          [zoom >= 11] {
            text-size: 11;
            text-wrap-width: 55; // 5.0 em
            text-line-spacing: -0.55; // -0.05 em
            text-margin: 7.7; // 0.7 em
          }
          [zoom >= 12] {
            text-size: 13;
            text-wrap-width: 65; // 5.0 em
            text-line-spacing: -0.65; // -0.05 em
            text-margin: 8.4; // 0.7 em
          }
          [zoom >= 14] {
            text-size: 15;
            text-wrap-width: 75; // 5.0 em
            text-line-spacing: -0.75; // -0.05 em
            text-margin: 10.5; // 0.7 em
          }
      }
   }
}

#placenames-small::suburb {
  [place = 'suburb'][zoom >= 15][zoom < 17] {
    text-name: "[name]";
    text-size: 12;
    text-fill: @placenames-light;
    text-face-name: @sans;
    text-halo-fill: white;
    text-halo-radius: @standard-halo-radius;
    text-wrap-width: 70; // 5.0 em
    text-line-spacing: -0.70; // -0.05 em
    text-margin: 9.8; // 0.7 em
    text-placement-type: simple;
    // FIXME: https://github.com/mapnik/mapnik/commit/4eae86b7bc750a08a7ab103a780d6b4bf951e1b1
    // text-placements: "C,N,S,E,W,NW,NE,SE";
    text-placements: "N,S,E,W,NW,NE,SE";
    text-dx: 25;
    text-dy: 20;
    [zoom >= 16] {
      text-size: 14;
      text-wrap-width: 75; // 5.0 em
      text-line-spacing: -0.75; // -0.05 em
      text-margin: 10.5; // 0.7 em
    }
  }
}



#placenames-small::village {
  [place = 'village'] {

    [zoom = 11],[zoom >= 12]{

        // small zoom: icon+text
        [zoom >= 11][zoom <= 13] {

              shield-file: url('symbols/village.svg');
              shield-text-dx: 15;
              shield-text-dy: 10;
              // shield-name: ' '+[name]+' '; // adding blanks seems to avoid troubles on tile boundary !
              shield-name: [name] ;  // finally, simpler to add blanks inside the SQL request
              shield-size: 10;
              shield-fill: @placenames;
              shield-face-name: @sans;
              shield-halo-fill: @city_halo;
              shield-halo-radius: @standard-halo-radius * 1.5;
              shield-wrap-width: 45; 
              shield-line-spacing: -0.8;
              shield-margin: 4.0; 
              shield-placement-type: simple;
              shield-placements: "N,S,E,SW,NW,NE,SE";
              //shield-avoid-edges: true;    // do NOT use : hides places whose center is on tile boundary , whatever the position of text !
              shield-unlock-image: true;
        }


        // high zoom : only text
        [zoom >= 14][zoom < 17] {
          text-name: "[name]";
          text-size: 10;
          text-fill: @placenames;
          text-face-name: @sans;
          text-halo-fill: @other_halo;
          text-halo-radius: @standard-halo-radius * 1.5;
          text-wrap-width: 50; // 5.0 em
          text-line-spacing: -0.50; // -0.05 em
          text-margin: 5.0; // 0.7 em
          text-placement-type: simple;
          // FIXME: https://github.com/mapnik/mapnik/commit/4eae86b7bc750a08a7ab103a780d6b4bf951e1b1
          // text-placements: "C,N,S,E,W,NW,NE,SE";
          text-placements: "N,S,E,NW,NE,SE";
          text-avoid-edges: true;  // avoid troubles on tile border
          text-dx: 15; //25;
          text-dy: 10; //20;
          [zoom >= 13] {
            text-size: 11;
            text-wrap-width: 55; // 5.0 em
            text-line-spacing: -0.55; // -0.05 em
            text-margin: 5; // 0.7 em
          }
          [zoom >= 14] {
            text-fill: @placenames-light;
            text-halo-fill: white;
            text-size: 13;
            text-wrap-width: 65; // 5.0 em
            text-line-spacing: -0.65; // -0.05 em
            text-margin: 9.1; // 0.7 em
          }
          [zoom >= 15] {
            text-size: 14;
            text-wrap-width: 70; // 5.0 em
            text-line-spacing: -0.70; // -0.05 em
            text-margin: 9.8; // 0.7 em
          }
          [zoom >= 16] {
            text-size: 15;
            text-wrap-width: 75; // 5.0 em
            text-line-spacing: -0.75; // -0.05 em
            text-margin: 10.5; // 0.7 em
          }
        }

    }
  }
}

#placenames-small::quarter {
  [place = 'quarter'] {
    [zoom >= 16][zoom <= 17] {
      text-name: "[name]";
      text-fill: @placenames;
      text-face-name: @sans;
      text-halo-fill: @other_halo;
      text-halo-radius: @standard-halo-radius * 1.5;
      text-halo-fill: white;
      text-fill: @placenames-light;
      text-wrap-width: 60; // 5.0 em
      text-line-spacing: -0.60; // -0.05 em
      text-margin: 8.4; // 0.7 em
      text-size: 12;
    }
  }
  [place = 'hamlet'] {
    [zoom >= 14][zoom < 18] {
      text-name: "[name]";
      text-fill: @placenames;
      text-face-name: @sans;
      text-halo-fill: white;
      text-halo-radius: @standard-halo-radius * 1.5;
      [zoom >= 14] {
        text-size: 10;
        text-wrap-width: 55; // 5.0 em
        text-line-spacing: -0.55; // -0.05 em
        text-margin: 7.7; // 0.7 em
      }
      [zoom >= 15] {
        text-size: 11;
        text-fill: @placenames-light;
        text-halo-fill: @other_halo;
        text-wrap-width: 45; // 4.5 em
        text-line-spacing: -0.8; // -0.08 em
        text-margin: 7.0; // 0.7 em
      }
      [zoom >= 16] {
        text-size: 12;
        text-wrap-width: 60; // 5.0 em
        text-line-spacing: -0.60; // -0.05 em
        text-margin: 8.4; // 0.7 em
        text-fill: @placenames-light;
        text-halo-fill: white;
      }
    }
  }
}

#placenames-small::neighborhood {
  [place = 'locality'],
  [place = 'neighbourhood'],
  [place = 'isolated_dwelling'],
  [place = 'farm'] {
    [zoom >= 15] {
      text-name: "[name]";
      text-size: 10;
      text-fill: @placenames;
      text-face-name: @sans;
      text-halo-fill: @other_halo;
      text-halo-radius: @standard-halo-radius * 1.5;
      text-wrap-width: 45; // 4.5 em
      text-line-spacing: -0.8; // -0.08 em
      text-margin: 7.0; // 0.7 em
    }
    [zoom >= 16] {
      text-size: 12;
      text-wrap-width: 60; // 5.0 em
      text-line-spacing: -0.60; // -0.05 em
      text-margin: 8.4; // 0.7 em
      text-fill: @placenames-light;
      text-halo-fill: white;
    }
  }
  [place = 'square'] {
    [zoom >= 17] {
      text-name: "[name]";
      text-size: 11;
      text-face-name: @sans;
      text-wrap-width: 30; // 2.7 em
      text-line-spacing: -1.7; // -0.15 em
    }
  }
}

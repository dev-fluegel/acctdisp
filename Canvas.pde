/****************************************************
 **
 **   NAME     : Canvas
 **   TYPE     : class
 **   VERSION  : 1.0
 **   FILE     : Canvas.pde
 **   SINCE    : 2021-03-16
 **   DATE     : 2021-03-16
 **   LANGUAGE : german
 **   AUTHOR   : Bastian Flügel (dev-fluegel@gmx.net)
 **   COMPILER : Processing 3.5.4
 **
 **   DESCRIPTION :
 **     // write here
 **
 ****************************************************/


 class Canvas {

   // *** *** GENERAL *** *** //

   // === ATTR === //

   color background_col = color ( 0, 0, 0 );
   color border_col = color ( 0, 0, 0 );
   float border_size = 0;

   float acctX1 = 0;
   float acctX2 = 0;
   float acctY1 = 0;
   float acctY2 = 0;

   float resX = 0;
   float resY = 0;

   float dispX1 = 0;
   float dispX2 = 0;
   float dispY1 = 0;
   float dispY2 = 0;

   float labelMarkX_start = 0;
   float labelMarkX_res = 0;
   float labelTextX_start = 0;
   float labelTextX_res = 0;
   float lineX_start = 0;
   float lineX_res = 0;

   float labelMarkY_start = 0;
   float labelMarkY_res = 0;
   float labelTextY_start = 0;
   float labelTextY_res = 0;
   float lineY_start = 0;
   float lineY_res = 0;

   color labelMarkX_col = color ( 0, 0, 0 );
   color labelTextX_col = color ( 0, 0, 0 );
   color lineX_col = color ( 0, 0, 0 );
   color labelMarkY_col = color ( 0, 0, 0 );
   color labelTextY_col = color ( 0, 0, 0 );
   color lineY_col = color ( 0, 0, 0 );

   color garphPos_col = color ( 0, 0, 0 );
   color graphNeg_col = color ( 0, 0, 0 );
   color movePos_col = color ( 0, 0, 0 );
   color moveNeg_col = color ( 0, 0, 0 );


   // === CONST === //

   Canvas ( float x, float y, float w, float h, color bg ) {

     this.background_col = bg;
     this.dispX1 = x;
     this.dispY1 = y;
     this.dispX2 = x + w;
     this.dispY2 = y - h;

     // code here

   }

   // with border
   Canvas ( float x, float y, float w, float h, color bg, float bdr_size, color bdr_col ) {

     this.background_col = bg;
     this.dispX1 = x;
     this.dispY1 = y;
     this.dispX2 = x + w;
     this.dispY2 = y - h;

     this.border_size = bdr_size;
     this.border_col = bdr_col;

     // code here

   }


   // *** *** METHODES *** *** //

   // === GETTER === //

   // === SETTER === //

   public void setLabel () {

     // code here
     
   }

   // === PUBLIC === //

   public void display () {

     rectMode ( CORNERS );
     colorMode ( RGB );

     if ( this.border_size != 0 ) {
       strokeWeight ( this.border_size );
       stroke ( this.border_col );
     } else {
       noStroke ();
     }

     fill ( this.background_col );
     rect ( this.dispX1, this.dispY1, this.dispX2, this.dispY2 );

     // code here

   }

   // === PRIVATE === //
 }

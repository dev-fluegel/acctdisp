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

   // === ATTRIBUTES === //

   color background_col = color ( 0, 0, 0 );
   color border_col = color ( 0, 0, 0 );
   float border_size = 0;

   float acctX1 = 0;
   float acctX2 = 0;
   float acctY1 = 0;
   float acctY2 = 0;

   int acctSizeX = 0;
   int acctSizeY = 0;

   float resX = 0;
   float resY = 0;

   float dispX1 = 0;
   float dispX2 = 0;
   float dispY1 = 0;
   float dispY2 = 0;

   float markX_start = 0;
   float markX_step = 0;
   float markX_size = 0;
   float markX_width = 0;
   color markX_col = color ( 0, 0, 0 );
   float markY_start = 0;
   float markY_step = 0;
   float markY_size = 0;
   float markY_width = 0;
   color markY_col = color ( 0, 0, 0 );

   float labelX_start = 0;
   float labelX_step = 0;
   float labelX_size = 0;
   color labelX_col = color ( 0, 0, 0 );
   float labelY_start = 0;
   float labelY_step = 0;
   float labelY_size = 0;
   color labelY_col = color ( 0, 0, 0 );

   float lineX_start = 0;
   float lineX_res = 0;
   float lineX_size = 0;
   color lineX_col = color ( 0, 0, 0 );
   float lineY_start = 0;
   float lineY_res = 0;
   float lineY_size = 0;
   color lineY_col = color ( 0, 0, 0 );

   color garphPos_col = color ( 0, 0, 0 );
   color graphNeg_col = color ( 0, 0, 0 );
   color movePos_col = color ( 0, 0, 0 );
   color moveNeg_col = color ( 0, 0, 0 );


   // === CONSTUCTOR === //

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

   // === GETTER METHODES === //

   // === SETTER METHODES === //

   public void setMark ( float startX, float startY, float stepX, float stepY, float lineSize, color col ) {

     this.markX_start = startX;
     this.markX_step  = stepX * resX;
     this.markX_size  = lineSize;
     this.markX_width = 1;

     this.markY_start = startY;
     this.markY_step  = stepY * resY;
     this.markY_size  = lineSize;
     this.markY_width = 1;

     this.markX_col = col;
     this.markY_col = col;

     // code here

   }

   public void setLabel ( float startX, float startY, float stepX, float stepY, float fontSize, color col ) {

     this.labelX_start = startX;
     this.labelX_step  = stepX * resX;
     this.labelX_size  = fontSize;

     this.labelY_start = startY;
     this.labelY_step  = stepY * resY;
     this.labelY_size  = fontSize;

     this.labelX_col = col;
     this.labelY_col = col;

     // code here

   }


   public void setGird ( float startX, float startY, float stepX, float stepY, float lineSize, color col ) {

     this.lineX_start = startX;
     this.lineX_step  = stepX * resX;
     this.lineX_size  = lineSize;
     this.lineY_start = startY;
     this.lineY_step  = stepY * resY;
     this.lineY_size  = lineSize;
     this.lineX_col   = col;
     this.lineY_col   = col;

     // code here

   }


   // === PUBLIC METHODES === //

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

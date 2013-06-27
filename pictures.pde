/* Still working on this code... 6/27/13 */

import SimpleOpenNI.*;
SimpleOpenNI context;

int closestValue, closestX, closestY;

void setup()
{
  size(640*2, 480);
  context = new SimpleOpenNI(this);
  context.enableDepth();
  context.enableRGB();
}

void draw()
{
  context.update();
  closetValue = 8000;
  
  int[] depthValue = context.depthMap();
  
  PImage depth = context.depthImage();
  PImage rgb = context.rgbImage();
  
  image(depth, 640, 0);
  image(rgb, 0, 0);
}
